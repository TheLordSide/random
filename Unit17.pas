unit Unit17;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, DBAdvGrid, Data.DB, Vcl.Menus, Vcl.StdCtrls, AdvGroupBox, W7Labels,
  W7Classes, W7Buttons;

type
  TForm17 = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    DataSource1: TDataSource;
    PopupMenu2: TPopupMenu;
    Commerce1: TMenuItem;
    Commerce2: TMenuItem;
    CommerceA1: TMenuItem;
    CommerceB1: TMenuItem;
    CommerceC1: TMenuItem;
    CommerceD1: TMenuItem;
    Industrie1: TMenuItem;
    IndustrieA1: TMenuItem;
    IndustrieB1: TMenuItem;
    IndustrieC1: TMenuItem;
    IndustrieD1: TMenuItem;
    IndustrieE1: TMenuItem;
    ListBox1: TListBox;
    AdvGroupBox1: TAdvGroupBox;
    W7ActiveLabel1: TW7ActiveLabel;
    W7ActiveLabel2: TW7ActiveLabel;
    W7SpeedButton1: TW7SpeedButton;
    W7ActiveLabel3: TW7ActiveLabel;
    W7ActiveLabel4: TW7ActiveLabel;
    ListBox2: TListBox;
    Service1: TMenuItem;
    ServiceA1: TMenuItem;
    ServiceB11: TMenuItem;
    ServiceB21: TMenuItem;
    ServiceB31: TMenuItem;
    ServiceB41: TMenuItem;
    ServiceB51: TMenuItem;
    ServiceB61: TMenuItem;
    ServiceC1: TMenuItem;
    ServiceD1G12: TMenuItem;
    ServiceD1G21: TMenuItem;
    ServiceD1G31: TMenuItem;
    ServiceD1G41: TMenuItem;
    ServiceD1G51: TMenuItem;
    ServiceD21: TMenuItem;
    procedure DBAdvGrid1ClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure FormShow(Sender: TObject);
    procedure DBAdvGrid1CheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure W7SpeedButton1Click(Sender: TObject);
    procedure CommerceB1Click(Sender: TObject);
    procedure CommerceA1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CommerceA2Click(Sender: TObject);
    procedure CommerceC1Click(Sender: TObject);
    procedure CommerceD1Click(Sender: TObject);
    procedure CommerceD2Click(Sender: TObject);
    procedure IndustrieA1Click(Sender: TObject);
    procedure IndustrieB1Click(Sender: TObject);
    procedure IndustrieC1Click(Sender: TObject);
    procedure IndustrieD1Click(Sender: TObject);
    procedure IndustrieE1Click(Sender: TObject);
    procedure ServiceA1Click(Sender: TObject);
    procedure ServiceB21Click(Sender: TObject);
    procedure ServiceB11Click(Sender: TObject);
    procedure ServiceB31Click(Sender: TObject);
    procedure ServiceB41Click(Sender: TObject);
    procedure ServiceB51Click(Sender: TObject);
    procedure ServiceB61Click(Sender: TObject);
    procedure ServiceC1Click(Sender: TObject);
    procedure ServiceD1G12Click(Sender: TObject);
    procedure ServiceD1G21Click(Sender: TObject);
    procedure ServiceD1G31Click(Sender: TObject);
    procedure ServiceD1G41Click(Sender: TObject);
    procedure ServiceD1G51Click(Sender: TObject);
    procedure ServiceD21Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form17: TForm17;

implementation

{$R *.dfm}

uses Unit1, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit16, Unit2,
  Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

procedure TForm17.CommerceA1Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Com A'', secteur=''Commerce'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;
  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.CommerceA2Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to ListBox2.Count do
  begin

  end;

end;

procedure TForm17.CommerceB1Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Com B'', secteur=''Commerce'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;
  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);

end;

procedure TForm17.CommerceC1Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Com C'', secteur=''Commerce'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.CommerceD1Click(Sender: TObject);

var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Com D'', secteur=''Commerce'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.CommerceD2Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Com E'', secteur=''Commerce'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.DBAdvGrid1CheckBoxClick(Sender: TObject; ACol, ARow: Integer;
  State: Boolean);
begin
  DBAdvGrid1.RowSelect[ARow] := State;
end;

procedure TForm17.DBAdvGrid1ClickCell(Sender: TObject; ARow, ACol: Integer);
begin
  ListBox1.Items.Add(DM.UniQuery2.FieldByName('Raison_Social').AsString);
  ListBox2.Items.Add(DM.UniQuery2.FieldByName('NomEtPrenomElecteur').AsString)
end;

procedure TForm17.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.Q_liste_electeur_COM_B_UNIQUE.Close;
  DM.Q_liste_electeur_COM_B_UNIQUE.Open;
  DM.Q_liste_COm_catA.Close;
  DM.Q_liste_COm_catA.Open
end;

procedure TForm17.FormShow(Sender: TObject);
var
  i: Integer;

begin

  DBAdvGrid1.FixedCols := 0;
  DBAdvGrid1.ColWidths[0] := 20;
  DBAdvGrid1.Options := DBAdvGrid1.Options + [goEditing];
  DBAdvGrid1.ShowSelection := false;
  for i := 1 to DM.UniQuery2.RecordCount do
  begin
    DBAdvGrid1.AddCheckBox(1, i, false, false);
    DBAdvGrid1.RandomFill(false, 100);
  end;
  W7ActiveLabel2.Caption := IntToStr(DM.UniQuery2.RecordCount)
end;

procedure TForm17.IndustrieA1Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ind A'', secteur=''Industrie'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.IndustrieB1Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ind B'', secteur=''Industrie'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.IndustrieC1Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ind C'', secteur=''Industrie'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.IndustrieD1Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ind D'', secteur=''Industrie'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.IndustrieE1Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ind E'', secteur=''Industrie'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.ServiceA1Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ser A'', secteur=''Service'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.ServiceB11Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ser B1'', secteur=''Service'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.ServiceB21Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ser B2'', secteur=''Service'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.ServiceB31Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ser B3'', secteur=''Service'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.ServiceB41Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ser B4'', secteur=''Service'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.ServiceB51Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ser B5'', secteur=''Service'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.ServiceB61Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ser B6'', secteur=''Service'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.ServiceC1Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ser C'', secteur=''Service'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.ServiceD1G12Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ser D1G1'', secteur=''Service'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.ServiceD1G21Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ser D1G2'', secteur=''Service'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.ServiceD1G31Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ser D1G3'', secteur=''Service'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.ServiceD1G41Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ser D1G4'', secteur=''Service'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.ServiceD1G51Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ser D1G5'', secteur=''Service'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.ServiceD21Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox1.Items.Count = 0 then
  begin
    ShowMessage('Aucune selection effectuee');
    exit
  end;
  for i := 0 to ListBox2.Items.Count - 1 do
  begin
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update  import_cat set categorie= ''Ser D2'', secteur=''Service'' where NomEtPrenomElecteur =:p  ';
    DM.Q_gbalo.Params.ParamByName('p').Value := ListBox2.Items[i];
    DM.Q_gbalo.ExecSQL;

  end;
  DM.UniQuery2.Close;
  DM.UniQuery2.Open;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);
end;

procedure TForm17.W7SpeedButton1Click(Sender: TObject);
var
  i: Integer;
  State: Boolean;

begin
  ListBox1.Items.Clear;
  for i := 1 to DM.UniQuery2.RecordCount do
  begin
    if DBAdvGrid1.GetCheckBoxState(1, i, State) then
    begin
      if State then
      begin
        DBAdvGrid1.SetCheckBoxState(0, i, false);
        ListBox1.Items.Add(DBAdvGrid1.Cells[1, i]);
        ListBox2.Items.Add(DBAdvGrid1.Cells[2, i]);
      end;
    end;
  end;
  W7ActiveLabel4.Caption := IntToStr(ListBox1.Items.Count);

end;

end.
