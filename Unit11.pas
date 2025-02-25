unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm11 = class(TForm)
    GridPanel1: TGridPanel;
    GridPanel2: TGridPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    GridPanel3: TGridPanel;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

uses Unit1, Unit10, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

procedure TForm11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form3.Show;
end;

procedure TForm11.SpeedButton2Click(Sender: TObject);
var
  i: integer;
begin
  DM.Q_gbalo.Close;
  DM.Q_gbalo.SQL.Clear;
  DM.Q_gbalo.SQL.Text := 'update electeur set electeur.region = ' +
    quotedstr(ComboBox2.Text) + ' where electeur.region = ' +
    quotedstr(ComboBox1.Text) + '  ';
  DM.Q_gbalo.ExecSQL;
  ShowMessage('Modifier avec succes');
  ComboBox1.Items.Clear;
  DM.Q_gbalo.Close;
  DM.Q_gbalo.SQL.Clear;
  DM.Q_gbalo.SQL.Text :=
    'select distinct(region) from electeur where electeur.region <>''LC'' group by region ';
  DM.Q_gbalo.open;
  for i := 0 to DM.Q_gbalo.RecordCount - 1 do
  begin
    Form11.ComboBox1.Items.Add(DM.Q_gbalo.FieldByName('region').AsString);
    DM.Q_gbalo.Next;
  end;

end;

end.
