unit Calculadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Clipbrd, StrUtils,
  Menus;

type
  TForm1 = class(TForm)
    pnlFundoTotal: TPanel;
    pnlFundoResultado: TPanel;
    edtDisplay: TEdit;
    pnlMemo: TPanel;
    mmoResultado: TMemo;
    pnl11: TPanel;
    mm1: TMainMenu;
    este1: TMenuItem;
    Estilos1: TMenuItem;
    D1: TMenuItem;
    Purple1: TMenuItem;
    eal1: TMenuItem;
    Histrico1: TMenuItem;
    pnl10: TPanel;
    lblFormula: TLabel;
    pnlFundolblFormula: TPanel;
    pnlFundoDigitos: TPanel;
    pnl0: TPanel;
    pnlVirg: TPanel;
    pnlResult: TPanel;
    pnl3: TPanel;
    pnl2: TPanel;
    pnl1: TPanel;
    pnl4: TPanel;
    pnl5: TPanel;
    pnl6: TPanel;
    pnl7: TPanel;
    pnl8: TPanel;
    pnl9: TPanel;
    pnlMenos: TPanel;
    pnlMult: TPanel;
    pnlDiv: TPanel;
    pnlMais: TPanel;
    pnlC: TPanel;
    pnlAC: TPanel;
    pnlNegativo: TPanel;
    pnlDelete: TPanel;
    procedure pnl7Click(Sender: TObject);
    procedure pnl8Click(Sender: TObject);
    procedure pnl9Click(Sender: TObject);
    procedure pnl4Click(Sender: TObject);
    procedure pnl5Click(Sender: TObject);
    procedure pnl6Click(Sender: TObject);
    procedure pnl1Click(Sender: TObject);
    procedure pnl2Click(Sender: TObject);
    procedure pnl3Click(Sender: TObject);
    procedure pnl0Click(Sender: TObject);
    procedure pnlVirgClick(Sender: TObject);
    procedure pnlDeleteClick(Sender: TObject);
    procedure pnlCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlNegativoClick(Sender: TObject);
    procedure pnlMaisClick(Sender: TObject);
    procedure pnlMenosClick(Sender: TObject);
    procedure pnlMultClick(Sender: TObject);
    procedure pnlDivClick(Sender: TObject);
    procedure pnlResultClick(Sender: TObject);
    procedure pnlACClick(Sender: TObject);
    procedure pnl11Click(Sender: TObject);
    procedure ResetarNumeros(Sender: TObject);
    function  CheckNumeroColocado(NumeroDigitado:String):String;
    procedure edtDisplayChange(Sender: TObject);
    procedure edtDisplayKeyPress(Sender: TObject; var Key: Char);
    procedure RealizarOperacao(Sender: TOBject);
    procedure Estilos1Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure Purple1Click(Sender: TObject);
    procedure eal1Click(Sender: TObject);
    procedure Histrico1Click(Sender: TObject);
    function MudarCor(cor:String):String;
    procedure edtDisplayMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AdicionarMemo(Sender: TObject);
    function OperacaoSelecionada (SinalRecebido: String): String;
    function jaHaNumero(Sender: TObject):Boolean;
  private
    { Private declarations }
    temVirgula, temNegativo, jahouveResultado, podeReiniciarNumero : Boolean;
    valorResultado: Extended;
    oper, histOperacoes, valor1, valor2: string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}


function Tform1.jaHaNumero(Sender: TObject):Boolean;
begin
  Result := False;
  if podeReiniciarNumero then
    Result := True;
end;

function TForm1.CheckNumeroColocado(NumeroDigitado:String):String;
begin
  if jaHouveResultado then
  begin
    ResetarNumeros(nil);
    edtDisplay.Text := NumeroDigitado;
  end
  else
  begin
    if edtDisplay.Text = '0' then
      edtDisplay.Text := NumeroDigitado
    else
    begin
      if jaHaNumero(nil) then
      begin
//        if NumeroDigitado = ',' then
//           edtDisplay

        ResetarNumeros(nil);
        edtDisplay.Text := NumeroDigitado;
      end
      else
        edtDisplay.Text := edtDisplay.Text + NumeroDigitado;
    end;
  end;
end;

procedure TForm1.ResetarNumeros(Sender: TObject);
begin
    if jahouveResultado then
    begin
      valor1:='';
      valor2:='';
      oper:='';
      valorResultado:=0;
      edtDisplay.Text:='0';
      lblFormula.Caption:='';
      jaHouveResultado:= False;
      temVirgula:= False;
      temNegativo:= False;

    end;
end;

procedure TForm1.AdicionarMemo(Sender: TObject);
begin
  histOperacoes:= valor1+' '+oper+' '+valor2+' = '+FloatToStr(valorResultado);
  if mmoResultado.Lines[0] = histOperacoes then
  else
    mmoResultado.Lines.Insert(0,histOperacoes);
end;

procedure TForm1.RealizarOperacao(Sender: TOBject);
begin
  if oper = '+' then
    valorResultado:= StrToFloat(valor1) + StrToFloat(valor2);
  if oper = '-' then
    valorResultado:= StrToFloat(valor1) - StrToFloat(valor2);
  if oper = 'x' then
    valorResultado:= StrToFloat(valor1) * StrToFloat(valor2);
  if oper = '/' then
    valorResultado:= StrToFloat(valor1) / StrToFloat(valor2);
end;

function TForm1.OperacaoSelecionada (SinalRecebido: String): String;
begin
  if podeReiniciarNumero then
  else
  begin
    podeReiniciarNumero := True;
    case AnsiIndexStr((SinalRecebido),['+','-','*','/']) of
      0:
        begin
          if (jahouveResultado) then
          begin
            oper:='+';
            valor1:=FloatToStr(valorResultado);
            lblFormula.Caption:= valor1 + ' +';
            jahouveResultado:= False;
            valor2:='';
            valorResultado:= 0;
          end
          else
          begin
            if valor1= '' then
            begin
              oper:='+';
              valor1:= edtDisplay.Text;
              lblFormula.Caption:=valor1 + ' +';
            end
            else
            begin
              valor2 := edtDisplay.Text;
              RealizarOperacao(nil);
              AdicionarMemo(nil);
              valor1 := FloatToStr(valorResultado);
              oper := '+';
              lblFormula.Caption := valor1+' +';
              edtDisplay.Text := valor1;
              valorResultado := 0;
            end;
          end;
        end;
      1:
        begin
          if (jahouveResultado) then
          begin
            oper:='-';
            valor1:=FloatToStr(valorResultado);
            lblFormula.Caption:= valor1 + ' -';
            jahouveResultado:= False;
            valor2:= '';
            valorResultado:= 0;
          end
          else
          begin
            if valor1 = '' then
            begin
              oper:='-';
              valor1:=edtDisplay.Text;
              lblFormula.Caption:=valor1 + ' -';
            end
            else
            begin
              valor2 := edtDisplay.Text;
              RealizarOperacao(nil);
              AdicionarMemo(nil);
              valor1 := FloatToStr(valorResultado);
              oper := '-';
              lblFormula.Caption := valor1+' -';
              edtDisplay.Text := valor1;
              valorResultado := 0;
            end;
          end;
        end;
      2:
        begin
          if (jahouveResultado) then
          begin
            oper:='*';
            valor1:=FloatToStr(valorResultado);
            lblFormula.Caption:= valor1 + ' *';
            jahouveResultado:= False;
            valor2:='';
            valorResultado:= 0;
          end
          else
          begin
            if valor1 = '' then
            begin
              oper:='*';
              valor1:=edtDisplay.Text;
              lblFormula.Caption:=valor1 + ' *';
            end
            else
            begin
              valor2 := edtDisplay.Text;
              RealizarOperacao(nil);
              AdicionarMemo(nil);
              valor1 := FloatToStr(valorResultado);
              oper := '*';
              lblFormula.Caption := valor1+' *';
              edtDisplay.Text := valor1;
              valorResultado := 0;
            end;
          end;
        end;
      3:
        begin
          if (jahouveResultado) then
          begin
            oper:='/';
            valor1:=FloatToStr(valorResultado);
            lblFormula.Caption:= valor1 + ' /';
            jahouveResultado:= False;
            valor2:= '';
            valorResultado:= 0;
          end
          else
          begin
            if valor1 = '' then
            begin
              oper:='/';
              valor1:=edtDisplay.Text;
              lblFormula.Caption:=valor1 + ' /';
            end
            else
            begin
            if valor2= '0' then
                  ShowMessage('N�o pode dividir por zero')
            else
            begin
              valor2 := edtDisplay.Text;
              RealizarOperacao(nil);
              AdicionarMemo(nil);
              valor1 := FloatToStr(valorResultado);
              oper := '/';
              lblFormula.Caption := valor1+' /';
              edtDisplay.Text := valor1;
              valorResultado := 0;
            end;

            end;
          end;
        end;
    end;
  end;

end;

procedure TForm1.pnl7Click(Sender: TObject);
begin

  CheckNumeroColocado('7');
  podeReiniciarNumero := False;
end;

procedure TForm1.pnl8Click(Sender: TObject);
begin
  CheckNumeroColocado('8');
  podeReiniciarNumero := False;
end;

procedure TForm1.pnl9Click(Sender: TObject);
begin
  CheckNumeroColocado('9');
  podeReiniciarNumero := False;
end;

procedure TForm1.pnl4Click(Sender: TObject);
begin
  CheckNumeroColocado('4');
  podeReiniciarNumero := False;
end;

procedure TForm1.pnl5Click(Sender: TObject);
begin
  CheckNumeroColocado('5');
  podeReiniciarNumero := False;
end;

procedure TForm1.pnl6Click(Sender: TObject);
begin
  CheckNumeroColocado('6');
  podeReiniciarNumero := False;
end;

procedure TForm1.pnl1Click(Sender: TObject);
begin
  CheckNumeroColocado('1');
  podeReiniciarNumero := False;
end;

procedure TForm1.pnl2Click(Sender: TObject);
begin
  CheckNumeroColocado('2');
  podeReiniciarNumero := False;
end;

procedure TForm1.pnl3Click(Sender: TObject);
begin
  CheckNumeroColocado('3');
  podeReiniciarNumero := False;
end;

procedure TForm1.pnl0Click(Sender: TObject);
begin
  CheckNumeroColocado('0');
  podeReiniciarNumero := False;
end;

procedure TForm1.pnlVirgClick(Sender: TObject);
begin
  if not(temVirgula) then
  begin
    if jahouveResultado then
      edtDisplay.Text := '0';
    edtDisplay.Text := edtDisplay.Text+',';
    temVirgula := True;
  end
  else
    edtDisplay.Text := edtDisplay.Text;
end;

procedure TForm1.pnlDeleteClick(Sender: TObject);
//const
//  number: number = [0..9];
var
//i: integer;
{verificarVirgula} verificarNegativo: Integer;
begin
  if jahouveResultado then
  begin
       valorResultado := 0;
       jahouveResultado := False;
       lblFormula.Caption := '';
  end
  else
  begin
      edtDisplay.Text:= copy(edtDisplay.Text,1,length(edtDisplay.Text)-1);
      if not(temVirgula) and (TemNegativo) then
      begin
        verificarNegativo := (length(edtDisplay.Text));
        if verificarNegativo = 1 then
          begin
            edtDisplay.Text := '0';
            temNegativo := False;
          end;
      end;
  end;
  {else
  begin
      edtDisplay.Text:= copy(edtDisplay.Text,1,length(edtDisplay.Text)-1);
      if not(temVirgula) and (TemNegativo) then
      begin
        verificarNegativo := (length(edtDisplay.Text));
        if verificarNegativo = 1 then
          begin
            edtDisplay.Text := '0';
            temNegativo := False;
          end;
      end;
      if (temVirgula) and not(temNegativo) then
      begin
        VerificarVirgula := 0;
        try
          for i := 1 to length(edtDisplay.Text) do
            begin
              verificarVirgula := StrToInt(edtDisplay.Text[i]);
            end;
            temVirgula := False;

        except
          temVirgula := True;
        end;
      end;
      if (temVirgula) and (temNegativo) then
      begin
        verificarVirgula := 0;
        VerificarNegativo := 0;
        try
          for i := 2 to length(edtDisplay.Text) do
          begin
            verificarVirgula := StrToInt(edtDisplay.Text[i]);
          end;
          temVirgula := False;
        except
          temVirgula := True;
        end;
      end;
  end;
  if(edtDisplay.Text = '') then
    edtDisplay.Text := '0';}
end;

procedure TForm1.pnlCClick(Sender: TObject);
begin
  if jaHouveResultado then
    ResetarNumeros(nil)
  else
  begin
    edtDisplay.Text := '0';
    temVirgula := False;
    temNegativo := False;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Form1.AutoSize := True;
  temVirgula := False;
  jahouveResultado := False;
  temNegativo := False;
  valor1 := '';
  valor2 := '';
  oper := '';
  valorResultado := 0;
  podeReiniciarNumero := False;
end;

procedure TForm1.pnlNegativoClick(Sender: TObject);
var
  negativar: Extended;
begin
  if (edtDisplay.Text = '0') then
    edtDisplay.Text := '0'
  else
  begin
    if (jahouveResultado) then
    begin
      lblFormula.Caption := 'negativo('+edtDisplay.Text+')';
      negativar := StrToFloat(edtDisplay.Text)*-1;
      jahouveResultado := False;
      edtDisplay.Text := FloatToStr(negativar);
      if temNegativo = False then
        temNegativo := True
      else
        temNegativo := False;
    end
    else
    begin
      negativar := StrToFloat(edtDisplay.Text)*-1;
      edtDisplay.Text := FloatToStr(negativar);
    if temNegativo = False then
      temNegativo := True
    else
      temNegativo := False;
    end;
  end;
end;


procedure TForm1.pnlMaisClick(Sender: TObject);
begin
  OperacaoSelecionada('+');
  podeReiniciarNumero := True;
end;

procedure TForm1.pnlMenosClick(Sender: TObject);
begin
  OperacaoSelecionada('-');
  podeReiniciarNumero := True;
end;

procedure TForm1.pnlMultClick(Sender: TObject);
begin
  OperacaoSelecionada('*');
  podeReiniciarNumero := True;
end;

procedure TForm1.pnlDivClick(Sender: TObject);
begin
  OperacaoSelecionada('/');
  podeReiniciarNumero := True;
end;

procedure TForm1.pnlResultClick(Sender: TObject);
var VerificarVirgula, i:integer;
ArmazenamentoValor:Extended;
begin
  if oper='' then
  begin
    valor1:=edtDisplay.Text;
    lblFormula.Caption:= valor1+' =';
  end
  else
  begin
    if valor1 = '' then
      valor1:= edtDisplay.Text
    else
      valor2:=edtDisplay.Text;
    jahouveResultado:= True;
    case AnsiIndexStr((oper),['+','-','*','/']) of
    0:
      begin
        valorResultado:=StrToFloat(valor1) + StrToFloat(valor2);
        edtDisplay.Text:=FloatToStr(valorResultado);
        lblFormula.Caption:= valor1+' '+oper+' '+valor2+' = '+FloatToStr(valorResultado);
        AdicionarMemo(nil);
        valor1:='';
      end;
    1:
      begin
        valorResultado:=StrToFloat(valor1) - StrToFloat(valor2);
        edtDisplay.Text:=FloatToStr(valorResultado);
        lblFormula.Caption:= valor1+' '+oper+' '+valor2+' = '+FloatToStr(valorResultado);
        AdicionarMemo(nil);
        valor1:='';
      end;
    2:
      begin
        valorResultado:=StrToFloat(valor1) * StrToFloat(valor2);
        edtDisplay.Text:=FloatToStr(valorResultado);
        lblFormula.Caption:= valor1+' '+oper+' '+valor2+' = '+FloatToStr(valorResultado);
        AdicionarMemo(nil);
        valor1:='';
      end;
    3:
      begin
        if valor2 = '0' then
          ShowMessage('N�o pode dividir por zero')
        else
        begin
          valorResultado:=StrToFloat(valor1) / StrToFloat(valor2);
          edtDisplay.Text:=FloatToStr(valorResultado);
          lblFormula.Caption:= valor1+' '+oper+' '+valor2+' = '+FloatToStr(valorResultado);
          AdicionarMemo(nil);
          valor1:='';
        end;
      end;

    end;

  end;
end;

procedure TForm1.pnlACClick(Sender: TObject);
begin
  valor1:= '';
  valor2:= '';
  temVirgula := False;
  temNegativo := False;
  edtDisplay.Text:='0';
  lblFormula.Caption:='';
end;

procedure TForm1.pnl11Click(Sender: TObject);
begin
  mmoResultado.Clear;
end;

procedure TForm1.edtDisplayChange(Sender: TObject);
var
  vPosicao, i, verificarNegativo, VerificarVirgula: Integer;
  valorSalvo: extended;
begin
  edtDisplay.SelStart:= Length(edtDisplay.text);
  if (edtDisplay.Text = '') then
      edtDisplay.Text:='0';
  podeReiniciarNumero := False;
  if (temVirgula) and not(temNegativo) then
  begin
        VerificarVirgula := 0;
        try
          for i := 1 to length(edtDisplay.Text) do
            begin
              verificarVirgula := StrToInt(edtDisplay.Text[i]);
            end;
            temVirgula := False;

        except
          temVirgula := True;
        end;
  end;
  if (temVirgula) and (temNegativo) then
  begin
     verificarVirgula := 0;
     VerificarNegativo := 0;
     try
        for i := 2 to length(edtDisplay.Text) do
        begin
             verificarVirgula := StrToInt(edtDisplay.Text[i]);
        end;
        temVirgula := False;
     except
        temVirgula := True;
     end;
  end;

end;

procedure TForm1.edtDisplayKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in['0'..'9',',',#8,'+','*','-','/',#13,#27]) then
  begin
    key:=#0;
  end
  else
  begin
    case AnsiIndexStr((Key),['0','1','2','3','4','5','6','7','8','9',',',#8,'+','-','*', '/',#13,#27]) of
    0:
      begin
        pnl0Click(nil);
        key:=#0;
      end;
    1:
      begin
        pnl1Click(nil);
        key:=#0;
      end;
    2:
      begin
        pnl2Click(nil);
        key:=#0;
      end;
    3:
      begin
        pnl3Click(nil);
        key:=#0;
      end;
    4:
      begin
        pnl4Click(nil);
        key:=#0;
      end;
    5:
      begin
        pnl5Click(nil);
        key:=#0;
      end;
    6:
      begin
        pnl6Click(nil);
        key:=#0;
      end;
    7:
      begin
        pnl7Click(nil);
        key:=#0;
      end;
    8:
      begin
        pnl8Click(nil);
        key:=#0;
      end;
    9:
      begin
        pnl9Click(nil);
        key:=#0;
      end;
    10:
      begin
        pnlVirgClick(nil);
        key:=#0;
      end;
    11:
      begin
        pnlDeleteClick(nil);
        key:=#0;
      end;
    12:
      begin
        pnlMaisClick(nil);
        key:=#0;
      end;
    13:
      begin
        pnlMenosClick(nil);
        key:=#0;
      end;
    14:
      begin
        pnlMultClick(nil);
        key:=#0;
      end;
    15:
      begin
        pnlDivClick(nil);
        key:=#0;
      end;
    16:
      begin
        pnlResultClick(nil);
      end;
    17:
      begin
        pnlACClick(nil);
      end;
    end;
  end;
end;


procedure TForm1.Estilos1Click(Sender: TObject);
begin
  MudarCor('Dark');
  Form1.pnlAc.Color := clMaroon;
  Form1.pnlC.Color := clMaroon;
  Form1.pnlFundoResultado.Color := clBtnFace;
  Form1.pnl11.Color:= clBtnFace;
  Form1.pnl10.Color:= clBtnFace;
  Form1.pnlMemo.Color := cl3DDkShadow;
  Form1.pnlFundoDigitos.Color := cl3DDkShadow;
  Form1.pnlFundoTotal.Color:= cl3DDkShadow;
  Form1.pnlFundolblFormula.Color := cl3DDkShadow;
  Form1.mmoResultado.Color:= clWindow;
  Form1.edtDisplay.Color:=clBtnFace;

end;


procedure TForm1.D1Click(Sender: TObject);
begin
  MudarCor('Yellow');
  Form1.pnlAc.Color := clMaroon;
  Form1.pnlC.Color := clMaroon;
  Form1.pnlFundoResultado.Color := $0000B0B0;
  Form1.pnl11.Color:= $0000B0B0;
  Form1.pnl10.Color:= $00DAFDFE;
  Form1.pnlMemo.Color := clYellow;
  Form1.pnlFundoDigitos.Color := $0000B0B0;
  Form1.pnlFundoTotal.Color:= clYellow;
  Form1.pnlFundolblFormula.Color := $0000B0B0;
  Form1.mmoResultado.Color:= $00DAFDFE;
  Form1.edtDisplay.Color:=$00DAFDFE;



end;

procedure TForm1.Purple1Click(Sender: TObject);
begin
  MudarCor('Purple');
  Form1.pnlAc.Color := clMaroon;
  Form1.pnlC.Color := clMaroon;
  Form1.pnlFundoResultado.Color := $00FBBFF0;
  Form1.pnl11.Color:= $00FBBFF0;
  Form1.pnl10.Color:= $00FCD1F4;
  Form1.pnlMemo.Color := clPurple;
  Form1.pnlFundoDigitos.Color := clPurple;
  Form1.pnlFundoTotal.Color:= clPurple;
  Form1.pnlFundolblFormula.Color := $00FBBFF0;
  Form1.mmoResultado.Color:= $00FCD1F4;
  Form1.edtDisplay.Color:=$00FCD1F4;


end;

procedure TForm1.eal1Click(Sender: TObject);
begin
  MudarCor('Teal');
  Form1.pnlAc.Color := clMaroon;
  Form1.pnlC.Color := clMaroon;
  Form1.pnlFundoResultado.Color := $00C6BC00;
  Form1.pnl11.Color:= $00C6BC00;
  Form1.pnl10.Color:= $00F2FF82;
  Form1.pnlMemo.Color := clTeal;
  Form1.pnlFundoDigitos.Color := clTeal;
  Form1.pnlFundoTotal.Color:= clTeal;
  Form1.pnlFundolblFormula.Color := clTeal;
  Form1.mmoResultado.Color:= $00F2FF82;
  Form1.edtDisplay.Color:=$00F2FF82;

end;

function TForm1.MudarCor(cor:String):String;
var
  i: integer;
begin
  with Form1 do
  begin
    for i:=0 to ComponentCount -1 do
    begin
      if(Components[i] is TPanel) then
      begin
        if((TPanel(Components[i]).Caption >= '0') and (TPanel(Components[i]).Caption <= '9')) then
        begin
          if(cor='Dark') then
            TPanel(Components[i]).Color:= clBtnFace;
          if(cor='Yellow') then
            TPanel(Components[i]).Color:= $00A0FAFC;
          if(cor='Purple') then
            TPanel(Components[i]).Color:= $00FAA3DB;;
          if(cor='Teal') then
            TPanel(Components[i]).Color:= $00F2FF82;
        end
        else
        begin
        if(cor='Dark') then
          TPanel(Components[i]).Color:= clBtnFace;
        if(cor='Yellow') then
          TPanel(Components[i]).Color:= $00A0FAFC;
        if(cor='Purple') then
          TPanel(Components[i]).Color:= $00FAA3DB;
        if(cor='Teal') then
          TPanel(Components[i]).Color:= $00F2FF82;
        end;
      end;
    end;
  end;
end;

procedure TForm1.Histrico1Click(Sender: TObject);
begin
  if pnlMemo.Tag = 0 then
    while pnlMemo.Width < 340 do
      pnlMemo.Width := pnlMemo.Width + 5
  else
    while pnlMemo.Width>0 do
      pnlMemo.Width := pnlMemo.Width - 5;
  pnlMemo.Tag := 1 - pnlMemo.Tag;
end;

procedure TForm1.edtDisplayMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Clipboard.Destroy;
  if edtDisplay.SelLength>0 then
    edtDisplay.SelLength:= 0;
  Clipboard.AsText := '';
end;

end.
