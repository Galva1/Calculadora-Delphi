unit Calculadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,
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
    pnlFundolblResultado: TPanel;
    pnl10: TPanel;
    lblResult: TLabel;
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
    procedure pnlFecharMemoClick(Sender: TObject);
    function MudarCor(cor:String):String;
  private
    { Private declarations }
    temVirgula, temNegativo, jahouveResultado, podeReiniciar, mmoHide: Boolean;
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
    Result:='Substituir';
  end
  else
    Result:='Inserir';

end;


procedure TForm1.pnl7Click(Sender: TObject);
begin
  if (edtResult.Text=FloatToStr(valorResultado)) and (jaHouveResultado=True) then
  begin
    edtResult.Text:='7';
    ResetarNumeros(nil);
  end
  else
  begin
    if (edtResult.Text='0') then
    begin
    edtResult.Text:='7';
    end
    else
    begin
      if (edtResult.Text<>FloatToStr(valorResultado)) then
        edtResult.Text:=edtResult.Text+'7'
      else
        edtResult.Text:='7';
    end;

  end;

end;

procedure TForm1.pnl8Click(Sender: TObject);
begin
  if (edtResult.Text=FloatToStr(valorResultado)) and (jaHouveResultado=True) then
  begin
    edtResult.Text:='8';
    ResetarNumeros(nil);
  end
  else
  begin
    if (edtResult.Text='0') then
    begin
    edtResult.Text:='8';
    end
    else
    begin
      if (edtResult.Text<>FloatToStr(valorResultado)) then
        edtResult.Text:=edtResult.Text+'8'
      else
        edtResult.Text:='8';
    end;

  end;
end;

procedure TForm1.pnl9Click(Sender: TObject);
begin
  if (edtResult.Text=FloatToStr(valorResultado)) and (jaHouveResultado=True) then
  begin
    edtResult.Text:='9';
    ResetarNumeros(nil);
  end
  else
  begin
    if (edtResult.Text='0') then
    begin
    edtResult.Text:='9';
    end
    else
    begin
      if (edtResult.Text<>FloatToStr(valorResultado)) then
        edtResult.Text:=edtResult.Text+'9'
      else
        edtResult.Text:='9';
    end;

  end;
end;

procedure TForm1.pnl4Click(Sender: TObject);
begin
  if (edtResult.Text=FloatToStr(valorResultado)) and (jaHouveResultado=True) then
  begin
    edtResult.Text:='4';
    ResetarNumeros(nil);
  end
  else
  begin
    if (edtResult.Text='0') then
    begin
    edtResult.Text:='4';
    end
    else
    begin
      if (edtResult.Text<>FloatToStr(valorResultado)) then
        edtResult.Text:=edtResult.Text+'4'
      else
        edtResult.Text:='4';
    end;

  end;
end;

procedure TForm1.pnl5Click(Sender: TObject);
begin
  if (edtResult.Text=FloatToStr(valorResultado)) and (jaHouveResultado=True) then
  begin
    edtResult.Text:='5';
    ResetarNumeros(nil);
  end
  else
  begin
    if (edtResult.Text='0') then
    begin
    edtResult.Text:='5';
    end
    else
    begin
      if (edtResult.Text<>FloatToStr(valorResultado)) then
        edtResult.Text:=edtResult.Text+'5'
      else
        edtResult.Text:='5';
    end;

  end;
end;

procedure TForm1.pnl6Click(Sender: TObject);
begin
  if (edtResult.Text=FloatToStr(valorResultado)) and (jaHouveResultado=True) then
  begin
    edtResult.Text:='6';
    ResetarNumeros(nil);
  end
  else
  begin
    if (edtResult.Text='0') then
    begin
    edtResult.Text:='6';
    end
    else
    begin
      if (edtResult.Text<>FloatToStr(valorResultado)) then
        edtResult.Text:=edtResult.Text+'6'
      else
        edtResult.Text:='6';
    end;

  end;


end;

procedure TForm1.pnl1Click(Sender: TObject);
begin
  if (edtResult.Text=FloatToStr(valorResultado)) and (jaHouveResultado=True) then
  begin
    edtResult.Text:='1';
    ResetarNumeros(nil);
  end
  else
  begin
    if (edtResult.Text='0') then
    begin
    edtResult.Text:='1';
    end
    else
    begin
      if (edtResult.Text<>FloatToStr(valorResultado)) then
        edtResult.Text:=edtResult.Text+'1'
      else
        edtResult.Text:='1';
    end;

  end;
end;

procedure TForm1.pnl2Click(Sender: TObject);
begin
  if (edtResult.Text=FloatToStr(valorResultado)) and (jaHouveResultado=True) then
  begin
    edtResult.Text:='2';
    ResetarNumeros(nil);
  end
  else
  begin
    if (edtResult.Text='0') then
    begin
    edtResult.Text:='2';
    end
    else
    begin
      if (edtResult.Text<>FloatToStr(valorResultado)) then
        edtResult.Text:=edtResult.Text+'2'
      else
        edtResult.Text:='2';
    end;

  end;
end;

procedure TForm1.pnl3Click(Sender: TObject);
begin
  if (edtResult.Text=FloatToStr(valorResultado)) and (jaHouveResultado=True) then
  begin
    edtResult.Text:='3';
    ResetarNumeros(nil);
  end
  else
  begin
    if (edtResult.Text='0') then
    begin
    edtResult.Text:='3';
    end
    else
    begin
      if (edtResult.Text<>FloatToStr(valorResultado)) then
        edtResult.Text:=edtResult.Text+'3'
      else
        edtResult.Text:='3';
    end;

  end;
end;

procedure TForm1.pnl0Click(Sender: TObject);
begin
  if (edtResult.Text=FloatToStr(valorResultado)) and (jaHouveResultado=True) then
  begin

    edtResult.Text:='0';
    ResetarNumeros(nil);
  end
  else
  begin
    if (edtResult.Text='0') then
    begin
    edtResult.Text:='0';
    end
    else
    begin
      if (edtResult.Text<>FloatToStr(valorResultado)) then
        edtResult.Text:=edtResult.Text+'0'
      else
        edtResult.Text:='0';
    end;

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

procedure TForm1.pnlVirgClick(Sender: TObject);
begin
  if temVirgula = False then
  begin
    if(edtResult.Text=FloatToStr(valorResultado)) then
      edtResult.Text:='0';
    edtResult.Text:=edtResult.Text+',';
    temVirgula:= True;
  end
  else
    edtResult.Text:=edtResult.Text;
end;


// CLICAR EM APAGAR
procedure TForm1.pnlDeleteClick(Sender: TObject);
const
  number: number=[0..9];
var
i: integer;
verificarVirgula, verificarNegativo: Integer;
begin
  if (edtResult.Text='0') or (edtResult.Text=FloatToStr(valorResultado)) then
    begin
    edtResult.Text:='0';
    end
  else
  begin
      edtResult.Text:= copy(edtResult.Text,1,length(edtResult.Text)-1);
      // Operação sem virgula e com negativo
      if (temVirgula = False) and (temNegativo = True) then
      begin
        verificarNegativo:=(length(edtResult.Text));
        if verificarNegativo= 1 then
          begin
          edtResult.Text:='0';
          temNegativo:= False;
          end;
      end;
    // Operação com virgula e sem negativo
      if (temVirgula = True) and (temNegativo = False) then
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
    // Fim do if

    // Operação com virgula e com negativo
      if (temVirgula= True and temNegativo = True) then
      begin
        verificarVirgula:= 0;
        VerificarNegativo:=0;
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
if (edtResult.Text = '') then
      edtResult.Text:='0';
end;
procedure TForm1.pnlCClick(Sender: TObject);
begin
  if not(jaHouveResultado= True) then
  begin
    edtResult.Text:='0';
    temVirgula:=False;
    temNegativo:=False;
  end
  else
  begin
    if valor1 = valorResultado then
      begin
        edtResult.Text:='0';
        temVirgula:=False;
        temNegativo:=False;
      end
      else
      begin
        valor1:= 0;
        valor2:= 0;
       edtResult.Text:='0';
        lblResult.Caption:='';
      end;

  
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
 mmoHide:= True;
end;

procedure TForm1.pnlNegativoClick(Sender: TObject);
var
  negativar: Extended;
begin
  if (edtResult.Text = '0') then
  begin
    edtResult.Text:='0';

  end
  else
  begin
    if (edtResult.Text=FloatToStr(valorResultado)) then
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
  if edtResult.Text=FloatToStr(valorResultado) then
  begin
    oper:='+';
    valor1:=valorResultado;
    temVirgula:= False;
    temNegativo:= False;
    edtResult.Text:='0';
    lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
    jahouveResultado := False;
    valorResultado:=0;
  end
  else
  begin
    if(valor1 = 0) then
    begin
    oper:='+';
    valor1:=StrToFloat(edtResult.Text);
    lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
    temVirgula:= False;
    temNegativo:= False;
    edtResult.Text:='0';
    end
    else
    begin
      if  podeReiniciar = True then
      begin
        oper:='+';
        valor1:=StrToFloat(edtResult.Text);
        lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
      end
      else
      begin
        valor2:=StrToFloat(edtResult.Text);
        RealizarOperacao(nil);
        histOperacoes:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);
        if mmoResultado.Lines[0] = histOperacoes then
        else
          mmoResultado.Lines.Insert(0,histOperacoes);
        valor1:=valorResultado;
        oper:='+';
        lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
        edtResult.Text:=FloatToStr(valor1);
        valorResultado:=0;
      end;

    end;

   end;


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

procedure TForm1.pnlMenosClick(Sender: TObject);
begin

  if edtResult.Text=FloatToStr(valorResultado) then
  begin
    oper:='-';
    temVirgula:= False;
    temNegativo:= False;
    edtResult.Text:='0';
    valor1:=valorResultado;
    lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
    jahouveResultado := False;
    valorResultado:=0;

  end
  else
  begin
    if(valor1 = 0) then
    begin
      oper:='-';
      valor1:=StrToFloat(edtResult.Text);
      TemVirgula:= False;
      lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
      edtResult.Text:='0';
      temNegativo:= False;
    end
    else
    begin
      if  podeReiniciar = True then
      begin
        oper:='-';
        valor1:=StrToFloat(edtResult.Text);
        TemVirgula:= False;
        lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
        edtResult.Text:='0';
      end
      else
      begin
        valor2:=StrToFloat(edtResult.Text);
        RealizarOperacao(nil);
        histOperacoes:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);
        mmoResultado.Lines.Insert(0,histOperacoes);
        valor1:=valorResultado;
        oper:='-';
        lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
        edtResult.Text:='0';
        TemVirgula:=False;
        valorResultado:=0;
      end;
    end;
  end;

end;

procedure TForm1.pnlMultClick(Sender: TObject);
begin
  if edtResult.Text=FloatToStr(valorResultado) then
  begin
    oper:='x';
    temVirgula:= False;
    temNegativo:= False;
    edtResult.Text:='0';
    valor1:=valorResultado;
    lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
    jahouveResultado := False;
    valorResultado:=0;

  end
  else
  begin
    if(valor1 = 0) then
    begin
      oper:='x';
      valor1:=StrToFloat(edtResult.Text);
      TemVirgula:= False;
      lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
      edtResult.Text:='0';
      temNegativo:= False;
    end
    else
    begin
      if  podeReiniciar then
      begin
        oper:='x';
        valor1:=StrToFloat(edtResult.Text);
        TemVirgula:= False;
        lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
        edtResult.Text:='0';
      end
      else
      begin
        valor2:=StrToFloat(edtResult.Text);
        RealizarOperacao(nil);
        histOperacoes:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);
        mmoResultado.Lines.Insert(0,histOperacoes);
        oper:='x';
        lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
        edtResult.Text:='0';
        TemVirgula:=False;
        valorResultado:=0;
      end;
    end;
  end;
end;

procedure TForm1.pnlDivClick(Sender: TObject);
begin

  if edtResult.Text=FloatToStr(valorResultado) then
  begin
    oper:='/';
    temVirgula:= False;
    temNegativo:= False;
    edtResult.Text:='0';
    valor1:=valorResultado;
    lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
    jahouveResultado := False;
    valorResultado:=0;

  end
  else
  begin
    if(valor1 = 0) then
    begin
      oper:='/';
      valor1:=StrToFloat(edtResult.Text);
      TemVirgula:= False;
      lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
      edtResult.Text:='0';
      temNegativo:= False;
    end
    else
    begin
      valor2:=StrToFloat(edtResult.Text);
      if not(valor2=0) then
      begin
        if  podeReiniciar then
        begin
        oper:='/';
        valor1:=StrToFloat(edtResult.Text);
        TemVirgula:= False;
        lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
        edtResult.Text:='0';
        end
        else
        begin

          valor2:=StrToFloat(edtResult.Text);
          RealizarOperacao(nil);
          histOperacoes:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);
          mmoResultado.Lines.Insert(0,histOperacoes);
          oper:='/';
          lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
          edtResult.Text:='0';
          TemVirgula:=False;
          valorResultado:=0;
        end;
      end
      else
      begin
        ShowMessage('Não pode dividir por zero');
      end;

    end;
  end;
end;

procedure TForm1.pnlResultClick(Sender: TObject);
var VerificarVirgula, i:integer;
ArmazenamentoValor:Extended;
begin
  if (not(oper='')) then
  begin
    temVirgula:= False;
    temNegativo:= False;
    jahouveResultado:= True;

    if(oper='+') then
    begin
      valor2:=StrToFloat(edtResult.Text);
      valorResultado:= valor1+valor2;
      edtResult.Text:=FloatToStr(valorResultado);
      lblResult.Caption:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);
      valor1:= valor2;
    end;
    if (oper='-') then
    begin
      valor2:=StrToFloat(edtResult.Text);
      valorResultado:= valor1-valor2;
      edtResult.Text:=FloatToStr(valorResultado);
      lblResult.Caption:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);
      valor1:= valor2;
    end;
    if (oper='x') then
    begin
      if valorResultado= 2 then
      begin
        edtResult.Text:=FloatToStr(valorResultado);
        lblResult.Caption:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);

      end
      else
      begin
        valor2:=StrToFloat(edtResult.Text);
        valorResultado:= valor1*valor2;
        edtResult.Text:=FloatToStr(valorResultado);
        lblResult.Caption:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);
      end;

    end;
    if (oper='/') then
    begin
      if not(valor2=0) then
      begin
        valor2:=StrToFloat(edtResult.Text);
        valorResultado:= valor1/valor2;
        edtResult.Text:=FloatToStr(valorResultado);
        lblResult.Caption:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);
        valor1:= valor2;

      end
      else
      begin
        ShowMessage('Não pode dividir por zero');
      end;
    end;
//    mmoResultado.Lines.Add(lblResult.Caption);
    histOperacoes:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);
    if mmoResultado.Lines[0] = histOperacoes then
        else
          mmoResultado.Lines.Insert(0,histOperacoes);
//    mmoResultado.Lines.Insert(0,lblResult.Caption);
  end
  else
  begin
    valor1:=StrToFloat(edtResult.Text);
    edtResult.Text:=edtResult.Text;
    lblResult.Caption:= FloatToStr(valor1)+' =';
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
    if (Key in[',']) then
    begin
    if temVirgula = False then
    begin
      if(edtResult.Text=FloatToStr(valorResultado)) then
        edtResult.Text:='0';
      temVirgula:= True;
    end
    else
      Key:=#0;
    end;
    if(Key in(['0'])) then
    begin
      pnl0Click(nil);
      key:=#0;
    end;
    if(Key in(['1'])) then
    begin
      pnl1Click(nil);
      key:=#0;
    end;
    if(Key in(['2'])) then
    begin
      pnl2Click(nil);
      key:=#0;
    end;
    if(Key in(['3'])) then
    begin
      pnl3Click(nil);
      key:=#0;
    end;
    if(Key in(['4'])) then
    begin
      pnl4Click(nil);
      key:=#0;
    end;
    if(Key in(['5'])) then
    begin
      pnl5Click(nil);
      key:=#0;
    end;
    if(Key in(['6'])) then
    begin
      pnl6Click(nil);
      key:=#0;
    end;
    if(Key in(['7'])) then
    begin
      pnl7Click(nil);
      key:=#0;
    end;
    if(Key in(['8'])) then
    begin
      pnl8Click(nil);
      key:=#0;
    end;
    if(Key in(['9'])) then
    begin
      pnl9Click(nil);
      key:=#0;
    end;
    if(Key in([#8])) then
    begin
      pnlDeleteClick(nil);
      key:=#0;
    end;
    if(Key in(['+'])) then
    begin
      pnlMaisClick(nil);
      key:=#0;
    end;
    if(Key in(['-'])) then
    begin
      pnlMenosClick(nil);
      key:=#0;
    end;
    if(Key in(['*'])) then
    begin
      pnlMultClick(nil);
      key:=#0;
    end;
    if(Key in(['/'])) then
    begin
      pnlDivClick(nil);
      key:=#0;
    end;
    if(Key in([#13])) then
    begin
      pnlResultClick(nil);
    end;
    if(Key in([#27])) then
    begin
      pnlACClick(nil);
    end;
  end;

end;


//procedure TForm1.pnlOpcoesClick(Sender: TObject);
//begin
//  try
//    formOpcoes := TFormOpcoes.Create(self);
//    formOpcoes.ShowModal;
//  finally
//    FormOpcoes.Free;
//  end;
//end;

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

const
  num=[0..9];
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
  if not(mmoHide) then
  begin
    mmoHide:= True;
    mmoResultado.Hide;
    pnlMemo.Hide;
    pnl11.Hide;
  end
  else
  begin
     mmoHide:= False;
     mmoResultado.Show;
     pnlMemo.Show;
     pnl11.Show;
  end;
end;

procedure TForm1.pnlFecharMemoClick(Sender: TObject);
begin
  if not(mmoHide) then
  begin
    mmoHide:= True;
    mmoResultado.Hide;
    pnlMemo.Hide;
    pnl11.Hide;
  end
  else
  begin
     mmoHide:= False;
     mmoResultado.Show;
     pnlMemo.Show;
     pnl11.Show;
  end;
end;

end.
