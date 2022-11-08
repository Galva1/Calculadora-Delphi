unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TFormOpcoes = class(TForm)
    pnlFundoGeralOpcoes: TPanel;
    pnl2: TPanel;
    pnlFundoOpcoes: TPanel;
    pnl4: TPanel;
    pnlEstilos: TPanel;
    pnlEstilo1: TPanel;
    pnlEstilo2: TPanel;
    pnlEstilo3: TPanel;
    pnlEstilo4: TPanel;
    pnlFontesOpcao: TPanel;
    pnlFontes: TPanel;
    pnlFonte1: TPanel;
    pnlFonte2: TPanel;
    pnlFonte3: TPanel;
    pnlFonte4: TPanel;
    procedure pnl4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlEstilo1Click(Sender: TObject);
    procedure pnlEstilo2Click(Sender: TObject);
    procedure pnlEstilo3Click(Sender: TObject);
    procedure pnlEstilo4Click(Sender: TObject);
    procedure pnlFontesOpcaoClick(Sender: TObject);
  private
    { Private declarations }
    EstilosHide, FontesHide: Boolean;
  public
    { Public declarations }
  end;

var
  FormOpcoes: TFormOpcoes;

implementation

uses
  Calculadora;

{$R *.dfm}

procedure TFormOpcoes.pnl4Click(Sender: TObject);
begin
  if EstilosHide then
  begin
    EstilosHide:= False;
    pnlEstilos.Visible:= True;
  end
  else
  begin
    EstilosHide:= True;
    pnlEstilos.Visible:= False;
  end;
  
end;

procedure TFormOpcoes.FormCreate(Sender: TObject);
begin
  EstilosHide:= True;
  FontesHide := True;
end;

procedure TFormOpcoes.pnlEstilo1Click(Sender: TObject);
begin
  Form1.pnlFundoDigitos.Color := cl3DDkShadow;
  Form1.pnlFundoTotal.Color:= cl3DDkShadow; {clYellow; }
  Form1.pnlFundoResultado.Color := clBtnFace;
  Form1.pnlFundolblResultado.Color := cl3DDkShadow;
  Form1.pnlMemo.Color := cl3DDkShadow;
  pnlFundoGeralOpcoes.Color := cl3DDkShadow;
  pnlFundoOpcoes.Color := cl3DDkShadow;
  pnlFontes.Color := cl3DDkShadow;
  pnlEstilos.Color := cl3DDkShadow;
end;

procedure TFormOpcoes.pnlEstilo2Click(Sender: TObject);
begin
  Form1.pnlFundoDigitos.Color := $0000B0B0;
  Form1.pnlFundoTotal.Color := clYellow; {clYellow; }
  Form1.pnlFundoResultado.Color := $0000B0B0;
  Form1.pnlFundolblResultado.Color := $0000B0B0;
  Form1.pnlMemo.Color := clYellow;
  pnlFundoGeralOpcoes.Color := clYellow;
  pnlFundoOpcoes.Color := $0000B0B0;
  pnlFontes.Color := clYellow;
  pnlEstilos.Color := clYellow;
end;

procedure TFormOpcoes.pnlEstilo3Click(Sender: TObject);
begin
  Form1.pnlFundoDigitos.Color := clPurple;
  Form1.pnlFundoTotal.Color := clPurple; {clYellow; }
  Form1.pnlFundoResultado.Color := $00FAA3DB;
  Form1.pnlFundolblResultado.Color := $00FAA3DB;
  Form1.pnlMemo.Color := clPurple;
  pnlFundoGeralOpcoes.Color := clPurple;
  pnlFundoOpcoes.Color := $00FAA3DB;
  pnlFontes.Color := clPurple;
  pnlEstilos.Color := clPurple;
end;

procedure TFormOpcoes.pnlEstilo4Click(Sender: TObject);
begin
  Form1.pnlFundoDigitos.Color := clTeal;
  Form1.pnlFundoTotal.Color := clTeal; {clYellow; }
  Form1.pnlFundoResultado.Color := $00C6BC00;
  Form1.pnlFundolblResultado.Color := $00C6BC00;
  Form1.pnlMemo.Color := clTeal;
  pnlFundoGeralOpcoes.Color := clTeal;
  pnlFundoOpcoes.Color := $00C6BC00;
  pnlFontes.Color := clTeal;
  pnlEstilos.Color := clTeal;
end;

procedure TFormOpcoes.pnlFontesOpcaoClick(Sender: TObject);
begin
  if FontesHide then
  begin
    FontesHide:= False;
    pnlFontes.Visible:= True;
  end
  else
  begin
    FontesHide:= True;
    pnlFontes.Visible:= False;
  end;
end;

end.
