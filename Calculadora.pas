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
    edtResult: TEdit;
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
    pnlFundolblResultado: TPanel;
    pnl10: TPanel;
    lblResult: TLabel;
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
    procedure edtResultChange(Sender: TObject);
    procedure edtResultKeyPress(Sender: TObject; var Key: Char);
    procedure RealizarOperacao(Sender: TOBject);
    procedure Estilos1Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure Purple1Click(Sender: TObject);
    procedure eal1Click(Sender: TObject);
    procedure Histrico1Click(Sender: TObject);
    function MudarCor(cor:String):String;
    procedure edtResultMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AdicionarMemo(Sender: TObject);
    function OperacaoSelecionada (SinalRecebido: String): String;
  private
    { Private declarations }
    temVirgula, temNegativo, jahouveResultado, podeReiniciar: Boolean;
    valor1, valor2, valorResultado: Extended;
    oper, histOperacoes: string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}



function TForm1.CheckNumeroColocado(NumeroDigitado:String):String;
begin
  if jaHouveResultado then
  begin
    ResetarNumeros(nil);
    edtResult.Text:=NumeroDigitado;
  end
  else
  begin
    if edtResult.Text='0' then
      edtResult.Text:=NumeroDigitado
    else
      edtResult.Text:=edtResult.Text+NumeroDigitado;
  end;
end;

procedure TForm1.ResetarNumeros(Sender: TObject);
begin
    valor1:=0;
    valor2:=0;
    valorResultado:=0;
    lblResult.Caption:='';
    jaHouveResultado:= False;
end;

procedure TForm1.AdicionarMemo(Sender: TObject);
begin
  histOperacoes:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);
  if mmoResultado.Lines[0] = histOperacoes then
  else
    mmoResultado.Lines.Insert(0,histOperacoes);
end;

procedure TForm1.RealizarOperacao(Sender: TOBject);
begin
  if oper = '+' then
    valorResultado:= valor1 + valor2;
  if oper = '-' then
    valorResultado:= valor1 - valor2;
  if oper = 'x' then
    valorResultado:= valor1 * valor2;
  if oper = '/' then
    valorResultado:= valor1 / valor2;
end;

function TForm1.OperacaoSelecionada (SinalRecebido: String): String;
begin
  case AnsiIndexStr((SinalRecebido),['+','-','*','/']) of
    0:
      begin
        if (jahouveResultado) then
        begin
          oper:='+';
          valor1:=valorResultado;
          lblResult.Caption:= FloatToStr(valor1) + ' +';
          jahouveResultado:= False;
          valor2:= 0;
          valorResultado:= 0;
        end
        else
        begin
          if valor1 = 0 then
          begin
            oper:='+';
            valor1:=StrToFloat(edtResult.Text);
            lblResult.Caption:=FloatToStr(valor1) + ' +';
          end
          else
          begin
            if valor2= 0 then
            else
            begin
              RealizarOperacao(nil);
              AdicionarMemo(nil);
              valor1:=valorResultado;
              oper:='+';
              lblResult.Caption:=FloatToStr(valor1)+' -';
              valorResultado:=0;
            end;
          end;
        end;
      end;

    1:
      begin
        if (jahouveResultado) then
        begin
          oper:='-';
          valor1:=valorResultado;
          lblResult.Caption:= FloatToStr(valor1) + ' -';
          jahouveResultado:= False;
          valor2:= 0;
          valorResultado:= 0;
        end
        else
        begin
          if valor1 = 0 then
          begin
            oper:='-';
            valor1:=StrToFloat(edtResult.Text);
            lblResult.Caption:=FloatToStr(valor1) + ' -';
          end
          else
          begin
            if valor2= 0 then
            else
            begin
              RealizarOperacao(nil);
              AdicionarMemo(nil);
              valor1:=valorResultado;
              oper:='-';
              lblResult.Caption:=FloatToStr(valor1)+' -';
              valorResultado:=0;
            end;
          end;
        end;
      end;
    2:
      begin
        if (jahouveResultado) then
        begin
          oper:='*';
          valor1:=valorResultado;
          lblResult.Caption:= FloatToStr(valor1) + ' *';
          jahouveResultado:= False;
          valor2:= 0;
          valorResultado:= 0;
        end
        else
        begin
          if valor1 = 0 then
          begin
            oper:='*';
            valor1:=StrToFloat(edtResult.Text);
            lblResult.Caption:=FloatToStr(valor1) + ' *';
          end
          else
          begin
            if valor2= 0 then
            else
            begin
              RealizarOperacao(nil);
              AdicionarMemo(nil);
              valor1:=valorResultado;
              oper:='*';
              lblResult.Caption:=FloatToStr(valor1)+' *';
              valorResultado:=0;
            end;
          end;
        end;
      end;
    3:
      begin
        if (jahouveResultado) then
        begin
          oper:='+';
          valor1:=valorResultado;
          lblResult.Caption:= FloatToStr(valor1) + ' +';
          jahouveResultado:= False;
          valor2:= 0;
          valorResultado:= 0;
        end
        else
        begin
          if valor1 = 0 then
          begin
            oper:='/';
            valor1:=StrToFloat(edtResult.Text);
            lblResult.Caption:=FloatToStr(valor1) + ' /';
          end
          else
          begin
            if valor2= 0 then
            begin
              ShowMessage('N�o pode dividir por zero');
            end
            else
            begin
              RealizarOperacao(nil);
              AdicionarMemo(nil);
              valor1:=valorResultado;
              oper:='/';
              lblResult.Caption:=FloatToStr(valor1)+' /';
              valorResultado:=0;
            end;
          end;
        end;
      end;

  end;
end;

procedure TForm1.pnl7Click(Sender: TObject);
begin
  CheckNumeroColocado('7');
end;

procedure TForm1.pnl8Click(Sender: TObject);
begin
  CheckNumeroColocado('8');
end;

procedure TForm1.pnl9Click(Sender: TObject);
begin
  CheckNumeroColocado('9');
end;

procedure TForm1.pnl4Click(Sender: TObject);
begin
  CheckNumeroColocado('4');
end;

procedure TForm1.pnl5Click(Sender: TObject);
begin
  CheckNumeroColocado('5');
end;

procedure TForm1.pnl6Click(Sender: TObject);
begin
  CheckNumeroColocado('6');
end;

procedure TForm1.pnl1Click(Sender: TObject);
begin
  CheckNumeroColocado('1');
end;

procedure TForm1.pnl2Click(Sender: TObject);
begin
  CheckNumeroColocado('2');
end;

procedure TForm1.pnl3Click(Sender: TObject);
begin
  CheckNumeroColocado('3');
end;

procedure TForm1.pnl0Click(Sender: TObject);
begin
  CheckNumeroColocado('0');
end;

procedure TForm1.pnlVirgClick(Sender: TObject);
begin
  if not(temVirgula) then
  begin
    if jahouveResultado then
      edtResult.Text:='0';
    edtResult.Text:=edtResult.Text+',';
    temVirgula:= True;
  end
  else
    edtResult.Text:=edtResult.Text;
end;

procedure TForm1.pnlDeleteClick(Sender: TObject);
const
  number: number=[0..9];
var
i: integer;
verificarVirgula, verificarNegativo: Integer;
begin
  if (edtResult.Text='0') or (edtResult.Text=FloatToStr(valorResultado)) then
    begin
      edtResult.Text:=FloatToStr(valor1);
      valor2:=0;
      valorResultado:=0;
      lblResult.Caption:=FloatToStr(valor1)+' '+oper;
      edtResult.Text:='0';
      temVirgula:=False;
      temNegativo:=False;
      jahouveResultado:=False;
    end
  else
  begin
      edtResult.Text:= copy(edtResult.Text,1,length(edtResult.Text)-1);
      if not(temVirgula) and (TemNegativo) then
      begin
        verificarNegativo:=(length(edtResult.Text));
        if verificarNegativo= 1 then
          begin
            edtResult.Text:='0';
            temNegativo:= False;
          end;
      end;
      if (temVirgula) and not(temNegativo) then
      begin
        VerificarVirgula:=0;
        try
          for i:=1 to length(edtResult.Text) do
            begin
              verificarVirgula:= StrToInt(edtResult.Text[i]);
            end;
            temVirgula:=False;

        except
          temVirgula:=True;
        end;
      end;
      if (temVirgula) and (temNegativo) then
      begin
        verificarVirgula:= 0;
        VerificarNegativo:= 0;
        try
          for i:=2 to length(edtResult.Text) do
          begin
            verificarVirgula:= StrToInt(edtResult.Text[i]);
          end;
          temVirgula:= False;
        except
          temVirgula:=True;
        end;
      end;
  end;
  if(edtResult.Text = '') then
    edtResult.Text:='0';
end;

procedure TForm1.pnlCClick(Sender: TObject);
begin
  if jaHouveResultado then
    ResetarNumeros(nil)
  else
  begin
    edtResult.Text:='0';
    temVirgula:=False;
    temNegativo:=False;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 temVirgula := False;
 jahouveResultado := False;
 temNegativo := False;
 valor1:= 0;
 valor2:= 0;
 oper:='';
 valorResultado:= 0.000001;
 podeReiniciar:= False;
end;

procedure TForm1.pnlNegativoClick(Sender: TObject);
var
  negativar: Extended;
begin
  if (edtResult.Text = '0') then
    edtResult.Text:='0'
  else
  begin
    if (jahouveResultado) then
    begin
      lblResult.Caption:='negativo('+edtResult.Text+')';
      negativar:=StrToFloat(edtResult.Text)*-1;
      jahouveResultado:= False;
      edtResult.Text:=FloatToStr(negativar);
      podeReiniciar:= True;
      if temNegativo = False then
        temNegativo:= True
      else
        temNegativo:= False;
    end
    else
    begin
      negativar:=StrToFloat(edtResult.Text)*-1;
      edtResult.Text:=FloatToStr(negativar);
    if temNegativo = False then
      temNegativo:= True
    else
      temNegativo:= False;
    end;
  end;
end;


procedure TForm1.pnlMaisClick(Sender: TObject);
begin
  OperacaoSelecionada('+');
end;

procedure TForm1.pnlMenosClick(Sender: TObject);
begin
  OperacaoSelecionada('-');
end;

procedure TForm1.pnlMultClick(Sender: TObject);
begin
  OperacaoSelecionada('*');
end;

procedure TForm1.pnlDivClick(Sender: TObject);
begin
  OperacaoSelecionada('/');
end;

procedure TForm1.pnlResultClick(Sender: TObject);
var VerificarVirgula, i:integer;
ArmazenamentoValor:Extended;
begin
  if oper='' then
  begin
    valor1:=StrToFloat(edtResult.Text);
    lblResult.Caption:= FloatToStr(valor1)+' =';
  end
  else
  begin
    case AnsiIndexStr((oper),['+','-','*','/']) of
    0:
      begin
        valorResultado:=valor1+valor2;
        edtResult.Text:=FloatToStr(valorResultado);
        lblResult.Caption:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);
      end;
    1:
      begin
        valorResultado:=valor1-valor2;
        edtResult.Text:=FloatToStr(valorResultado);
        lblResult.Caption:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);
      end;
    2:
      begin
        valorResultado:=valor1*valor2;
        edtResult.Text:=FloatToStr(valorResultado);
        lblResult.Caption:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);
      end;
    3:
      begin
        if valor2 = 0 then
          ShowMessage('N�o pode dividir por zero')
        else
        begin
          valorResultado:=valor1/valor2;
          edtResult.Text:=FloatToStr(valorResultado);
          lblResult.Caption:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);
        end;
      end;

    end;
    AdicionarMemo(nil);
  end;
end;

procedure TForm1.pnlACClick(Sender: TObject);
begin
  valor1:= 0;
  valor2:= 0;
  temVirgula := False;
  temNegativo := False;
  edtResult.Text:='0';
  lblResult.Caption:='';
end;

procedure TForm1.pnl11Click(Sender: TObject);
begin
  mmoResultado.Clear;
end;

procedure TForm1.edtResultChange(Sender: TObject);
var
  vPosicao: Integer;
begin
  if (edtResult.Text = '') then
      edtResult.Text:='0';

  edtResult.SelStart:= Length(edtResult.text);

end;

procedure TForm1.edtResultKeyPress(Sender: TObject; var Key: Char);
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
  Form1.pnlFundolblResultado.Color := cl3DDkShadow;
  Form1.mmoResultado.Color:= clWindow;
  Form1.edtResult.Color:=clBtnFace;

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
  Form1.pnlFundolblResultado.Color := $0000B0B0;
  Form1.mmoResultado.Color:= $00DAFDFE;
  Form1.edtResult.Color:=$00DAFDFE;



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
  Form1.pnlFundolblResultado.Color := $00FBBFF0;
  Form1.mmoResultado.Color:= $00FCD1F4;
  Form1.edtResult.Color:=$00FCD1F4;


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
  Form1.pnlFundolblResultado.Color := clTeal;
  Form1.mmoResultado.Color:= $00F2FF82;
  Form1.edtResult.Color:=$00F2FF82;

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

procedure TForm1.edtResultMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Clipboard.Destroy;
  if edtResult.SelLength>0 then
    edtResult.SelLength:= 0;
end;

end.
