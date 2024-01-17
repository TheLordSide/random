unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm12 = class(TForm)
    GridPanel1: TGridPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    GridPanel2: TGridPanel;
    Label2: TLabel;
    GridPanel3: TGridPanel;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

uses Unit1, Unit10, Unit11, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8,
  Unit9;

procedure TForm12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form3.Show;
end;

procedure TForm12.SpeedButton2Click(Sender: TObject);
var
  i: integer;
begin
  DM.Q_gbalo.Close;
  DM.Q_gbalo.SQL.Clear;
  DM.Q_gbalo.SQL.Text := 'update electeur set electeur.Representant1 = ' +
    quotedstr(Edit1.Text) + ' where electeur.Representant1 = ' +
    quotedstr(ComboBox1.Text) + '  ';
  DM.Q_gbalo.ExecSQL;
  ShowMessage('Modifier avec succes');
  ComboBox1.Items.Clear;
  DM.Q_gbalo.Close;
  DM.Q_gbalo.SQL.Clear;
  DM.Q_gbalo.SQL.Text :=
    'select Representant1 from electeur group by Representant1 ';
  DM.Q_gbalo.Open;
  for i := 0 to DM.Q_gbalo.RecordCount - 1 do
  begin
    ComboBox1.Items.Add(DM.Q_gbalo.FieldByName('Representant1').AsString);
    DM.Q_gbalo.Next;
  end;

end;

end.
