unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.WinXCtrls, Data.DB;

type
  TForm5 = class(TForm)
    DataSource1: TDataSource;
    Panel1: TPanel;
    GridPanel1: TGridPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    GridPanel2: TGridPanel;
    Label2: TLabel;
    GridPanel3: TGridPanel;
    SpeedButton2: TSpeedButton;
    ComboBox2: TComboBox;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form3.Show
end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
var
  i: integer;
begin
  DM.Q_gbalo.Close;
  DM.Q_gbalo.SQL.Clear;
  DM.Q_gbalo.SQL.Text := 'update pieces set pieces.Nompiece = ' +
    quotedstr(ComboBox2.Text) + ' where pieces.Nompiece = ' +
    quotedstr(ComboBox1.Text) + '  ';
  DM.Q_gbalo.ExecSQL;
  ShowMessage('Modifier avec succes');
  ComboBox1.Items.Clear;
  DM.Q_gbalo.Close;
  DM.Q_gbalo.SQL.Clear;
  DM.Q_gbalo.SQL.Text := 'select Nompiece from pieces group by Nompiece ';
  DM.Q_gbalo.open;
  for i := 0 to DM.Q_gbalo.RecordCount - 1 do
  begin
    Form5.ComboBox1.Items.Add(DM.Q_gbalo.FieldByName('Nompiece').AsString);
    DM.Q_gbalo.Next;
  end;

end;

end.
