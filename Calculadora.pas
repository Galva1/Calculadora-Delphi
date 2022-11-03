unit Calculadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtResult: TEdit;
    Panel3: TPanel;
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
    Panel4: TPanel;
    Panel5: TPanel;
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
  private
    { Private declarations }
    temVirgula, temNegativo, jahouveResultado: Boolean;
    valor1, valor2, valorResultado: Extended;
    oper: string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.pnl7Click(Sender: TObject);
begin
  // Após o Resultado sair, se o usuário pressionar alguma letra ele reseta.
  if (edtResult.Text=FloatToStr(valorResultado)) and (jaHouveResultado=True) then
  begin
    valor1:=0;
    valor2:=0;
    valorResultado:=0;
    lblResult.Caption:='';
    edtResult.Text:='7';
    jaHouveResultado:= False;
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
    valor1:=0;
    valor2:=0;
    valorResultado:=0;
    lblResult.Caption:='';
    edtResult.Text:='8';
    jaHouveResultado:= False;
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
    valor1:=0;
    valor2:=0;
    valorResultado:=0;
    lblResult.Caption:='';
    edtResult.Text:='9';
    jaHouveResultado:= False;
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
    valor1:=0;
    valor2:=0;
    valorResultado:=0;
    lblResult.Caption:='';
    edtResult.Text:='4';
    jaHouveResultado:= False;
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
    valor1:=0;
    valor2:=0;
    valorResultado:=0;
    lblResult.Caption:='';
    edtResult.Text:='5';
    jaHouveResultado:= False;
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
    valor1:=0;
    valor2:=0;
    valorResultado:=0;
    lblResult.Caption:='';
    edtResult.Text:='6';
    jaHouveResultado:= False;
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
    valor1:=0;
    valor2:=0;
    valorResultado:=0;
    lblResult.Caption:='';
    edtResult.Text:='1';
    jaHouveResultado:= False;
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
    valor1:=0;
    valor2:=0;
    valorResultado:=0;
    lblResult.Caption:='';
    edtResult.Text:='2';
    jaHouveResultado:= False;
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
    valor1:=0;
    valor2:=0;
    valorResultado:=0;
    lblResult.Caption:='';
    edtResult.Text:='3';
    jaHouveResultado:= False;
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
    valor1:=0;
    valor2:=0;
    valorResultado:=0;
    lblResult.Caption:='';
    edtResult.Text:='0';
    jaHouveResultado:= False;
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
    valor1:= 0;
    valor2:= 0;
    edtResult.Text:='0';
    lblResult.Caption:='';
  
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
end;

procedure TForm1.pnlNegativoClick(Sender: TObject);
var
  negativar: Extended;
begin
  if (edtResult.Text = '0') or (edtResult.Text=FloatToStr(valorResultado)) then
  begin
    edtResult.Text:='0';
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
procedure TForm1.pnlMaisClick(Sender: TObject);
begin
  oper:='+';
  if edtResult.Text=FloatToStr(valorResultado) then
  begin
    valor1:=valorResultado;
    lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
    jahouveResultado := False;

  end
  else
  begin
    if(valor1 = 0) then
    begin
    valor1:=StrToFloat(edtResult.Text);
    TemVirgula:= False;
    lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
    edtResult.Text:='0';
    end
    else
    begin
      valor2:=StrToFloat(edtResult.Text);
      valor1:=valor1+valor2;
      lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
      edtResult.Text:='0';
      TemVirgula:=False;
    end;

   end;


end;

procedure TForm1.pnlMenosClick(Sender: TObject);
begin
  oper:='-';
  if edtResult.Text=FloatToStr(valorResultado) then
  begin
    valor1:=valorResultado;
    lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
    jahouveResultado := False;

  end
  else
  begin
    if(valor1 = 0) then
    begin
      valor1:=StrToFloat(edtResult.Text);
      TemVirgula:= False;
      lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
      edtResult.Text:='0';
    end
    else
    begin
      valor2:=StrToFloat(edtResult.Text);
      valor1:=valor1-valor2;
      lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
      edtResult.Text:= '0';
      TemVirgula:=False;
    end;
  end;

end;

procedure TForm1.pnlMultClick(Sender: TObject);
begin
  oper:='x';
  if edtResult.Text=FloatToStr(valorResultado) then
  begin
    valor1:=valorResultado;
    lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
    jahouveResultado := False;

  end
  else
  begin
    if(valor1 = 0) then
    begin
      valor1:=StrToFloat(edtResult.Text);
      TemVirgula:= False;
      lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
      edtResult.Text:='0';
    end
    else
    begin
      valor2:=StrToFloat(edtResult.Text);
      valor1:=valor1*valor2;
      lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
      edtResult.Text:= '0';
      TemVirgula:=False;
    end;
  end;
end;

procedure TForm1.pnlDivClick(Sender: TObject);
begin
  oper:='/';
  if edtResult.Text=FloatToStr(valorResultado) then
  begin
    valor1:=valorResultado;
    lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
    jahouveResultado := False;

  end
  else
  begin
    if(valor1 = 0) then
    begin
      valor1:=StrToFloat(edtResult.Text);
      TemVirgula:= False;
      lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
      edtResult.Text:='0';
    end
    else
    begin
      valor2:=StrToFloat(edtResult.Text);
      if not(valor2=0) then
      begin
        valor1:=valor1/valor2;
        lblResult.Caption:=FloatToStr(valor1) + ' ' + oper;
        edtResult.Text:= '0';
        TemVirgula:=False;
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
begin
  if (not(oper='')) then
  begin
    valor2:=StrToFloat(edtResult.Text);
    temVirgula:= False;
    temNegativo:= False;
    jahouveResultado:= True;
    if(oper='+') then
    begin
      valorResultado:= valor1+valor2;
      edtResult.Text:=FloatToStr(valorResultado);
      lblResult.Caption:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);
    end;
    if (oper='-') then
    begin
      valorResultado:= valor1-valor2;
      edtResult.Text:=FloatToStr(valorResultado);
      lblResult.Caption:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);
    end;
    if (oper='x') then
    begin
      valorResultado:= valor1*valor2;
      edtResult.Text:=FloatToStr(valorResultado);
      lblResult.Caption:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);
    end;
    if (oper='/') then
    begin
      if not(valor2=0) then
      begin
        valorResultado:= valor1/valor2;
        edtResult.Text:=FloatToStr(valorResultado);
        lblResult.Caption:= FloatToStr(valor1)+' '+oper+' '+FloatToStr(valor2)+' = '+FloatToStr(valorResultado);
      end
      else
      begin
        ShowMessage('Não pode dividir por zero');
      end;
    end;
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
  edtResult.Text:='0';
  lblResult.Caption:='';
end;

end.
