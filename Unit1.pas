unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    GridPanel1: TGridPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('Username vide');
    Exit
  end;

  if Edit2.Text = '' then
  begin
    ShowMessage('Mot de passe vide');
    Exit
  end;

  DM.Q_gbalo.Close;
  DM.Q_gbalo.SQL.Clear;
  DM.Q_gbalo.SQL.Text := 'select * from user where Username=:p and Password=:m';
  DM.Q_gbalo.Params.ParamByName('p').Value := Edit1.Text;
  DM.Q_gbalo.Params.ParamByName('m').Value := Edit2.Text;
  DM.Q_gbalo.Open;
  if DM.Q_gbalo.RecordCount = 0 then
  begin
    ShowMessage('Username ou mot de passe incorrect');
    Exit
  end;
  if DM.Q_gbalo.RecordCount > 0 then
  begin
    self.Width := 0;
    self.Height := 0;
    Form3.Show;
    Edit1.Clear;
    Edit2.Clear;
  end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
