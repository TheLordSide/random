unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.WinXCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus;

type
  TForm6 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    GridPanel26: TGridPanel;
    Edit21: TEdit;
    Edit22: TEdit;
    SpeedButton41: TSpeedButton;
    GroupBox3: TGroupBox;
    GridPanel27: TGridPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    TabSheet2: TTabSheet;
    SpeedButton42: TSpeedButton;
    DataSource1: TDataSource;
    GridPanel1: TGridPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    GridPanel2: TGridPanel;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    GridPanel4: TGridPanel;
    GridPanel5: TGridPanel;
    GridPanel6: TGridPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    GridPanel7: TGridPanel;
    Label10: TLabel;
    Label11: TLabel;
    DataSource3: TDataSource;
    GridPanel3: TGridPanel;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    Definircomme1: TMenuItem;
    PopupMenu3: TPopupMenu;
    Commerce1: TMenuItem;
    Industrie1: TMenuItem;
    Service1: TMenuItem;
    ComboBox2: TComboBox;
    GridPanel8: TGridPanel;
    Label8: TLabel;
    Label9: TLabel;
    procedure SpeedButton42Click(Sender: TObject);
    procedure SpeedButton41Click(Sender: TObject);
    procedure SearchBox1Change(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Commerce1Click(Sender: TObject);
    procedure Industrie1Click(Sender: TObject);
    procedure Service1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit2, Unit1, Unit3, Unit4, Unit5, Unit7, Unit8, Unit9;
{ TForm6 }

procedure TForm6.ComboBox2Change(Sender: TObject);
begin
if True then

end;

procedure TForm6.Commerce1Click(Sender: TObject);
var
  liste: TBookmarklist;
  bookmark: TBookmark;
  i: integer;

begin
  liste := DBGrid1.SelectedRows;
  for i := 0 to liste.Count - 1 do
  begin
    DM.Q_simulation_region.GotoBookmark(liste[i]);
  end;
  DBGrid1.SelectedRows.Clear;
  DM.Q_import_cat.Close;
  DM.Q_import_cat.Open;
end;

procedure TForm6.DBGrid1CellClick(Column: TColumn);
begin
  Label5.Caption := DM.Q_simulation_region.FieldByName
    ('NomEtPrenomElecteur').AsString;
  Label3.Caption := DM.Q_simulation_region.FieldByName('Referant').AsString;
  Label7.Caption := DM.Q_simulation_region.FieldByName('Region').AsString;
  Label11.Caption := DM.Q_simulation_region.FieldByName
    ('Raison_Social').AsString;
  DM.Q_import_cat.Close;
  DM.Q_import_cat.sql.Clear;
  DM.Q_import_cat.sql.Text :=
    'select distinct(import_cat.Secteur), NomEtPrenomElecteur from import_cat where NomEtPrenomElecteur = '
    + QuotedStr(Label5.Caption) + ' ';
  DM.Q_import_cat.Open;
end;

procedure TForm6.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  Label30.Caption := DM.Q_historique_sim.FieldByName('Auteur').AsString;
  Label31.Caption := DM.Q_historique_sim.FieldByName('datesim').AsString;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form3.Show
end;

procedure TForm6.Industrie1Click(Sender: TObject);
begin
  DM.Q_gbalo.Close;
  DM.Q_gbalo.sql.Clear;
  DM.Q_gbalo.sql.Text :=
    'update Import_cat set Secteur =''Industrie'' where NomEtPrenomElecteur = '
    + QuotedStr(Label5.Caption) + ' ';
  DM.Q_gbalo.ExecSQL;
  DM.Q_import_cat.Close;
  DM.Q_import_cat.Open;
end;

procedure TForm6.SearchBox1Change(Sender: TObject);
begin
  {
    try
    DM.Q_simulation_region.Close;
    DM.Q_simulation_region.sql.Text :=
    'select NomEtPrenomElecteur,Raison_Social, Region, Referant, Nom_sim from importations where ( NomEtPrenomElecteur like ''%'
    + SearchBox1.Text + '%'' ) and (Region = ' + QuotedStr(ComboBox1.Text) +
    ') and Nom_sim=' + QuotedStr(DBLookupComboBox1.Text) +
    'group by Raison_Social order by Referant ';
    DM.Q_simulation_region.Open;
    Except
    on E: Exception do
    ShowMessage(E.ToString);
    end; }
end;

procedure TForm6.Service1Click(Sender: TObject);
begin
  DM.Q_gbalo.Close;
  DM.Q_gbalo.sql.Clear;
  DM.Q_gbalo.sql.Text :=
    'update Import_cat set Secteur =''Service'' where NomEtPrenomElecteur = ' +
    QuotedStr(Label5.Caption) + ' ';
  DM.Q_gbalo.ExecSQL;
  DM.Q_import_cat.Close;
  DM.Q_import_cat.Open;
end;

procedure TForm6.SpeedButton41Click(Sender: TObject);
begin
  if Edit21.Text = '' then
  begin
    ShowMessage('Un nom de simulation est requis est requis');
    exit;
  end;

  if Edit22.Text = '' then
  begin
    ShowMessage('L''auteur de la simulation est requis');
    exit;
  end;

  DM.Q_gbalo.Close;
  DM.Q_gbalo.sql.Text := 'Select * from historique_sim where Nom=:p';
  DM.Q_gbalo.Params.ParamByName('p').Value := Edit21.Text;
  DM.Q_gbalo.Open;
  if DM.Q_gbalo.RecordCount > 0 then
  begin
    ShowMessage('La simulation du nom de ' + Edit21.Text + ' existe deja');
    exit
  end;
  DM.T_historique.Active := true;
  DM.T_historique.Append;
  DM.T_historique.FieldByName('Nom').AsString := Edit21.Text;
  DM.T_historique.FieldByName('Auteur').AsString := Edit22.Text;
  DM.T_historique.FieldByName('datesim').AsString := DateToStr(Date());
  DM.T_historique.Post;
  ShowMessage('La simulation ' + Edit21.Text + ' a ete cree avec succes par ' +
    Edit22.Text + ' ');
  Edit21.Clear;
  Edit22.Clear;
  DM.T_historique.Active := false;
  DM.T_historique.Active := true;
  DM.Q_historique_sim.Close;
  DM.Q_historique_sim.Open;
end;

procedure TForm6.SpeedButton42Click(Sender: TObject);
var
  i: integer;
begin
  if DBLookupComboBox1.KeyValue = null then
  begin
    ShowMessage('Vous n''avez choisi aucune simulation');
    exit
  end;
  DM.Q_gbalo.Close;
  DM.Q_gbalo.sql.Clear;
  DM.Q_gbalo.sql.Text :=
    'select distinct (region) from electeur where electeur.region <>'' '' or electeur.region is not null  ';
  DM.Q_gbalo.Open;

  while not DM.Q_gbalo.Eof do
  begin
    ComboBox1.Items.Add(DM.Q_gbalo.FieldByName('Region').AsString);
    DM.Q_gbalo.Next;
  end;

  ComboBox1.Enabled := true;
  DM.T_import_cat2.Active := true;
  DM.T_cat.Close;
  DM.T_cat.Open;
  DM.T_electeur.Active := true;
  DM.T_importation.Active := true;

  DM.Q_gbalo.Close;
  DM.Q_gbalo.sql.Clear;
  DM.Q_gbalo.sql.Text := 'select * from importations where Nom_sim =:p ';
  DM.Q_gbalo.Params.ParamByName('p').Value := DBLookupComboBox1.Text;
  DM.Q_gbalo.Open;
  if DM.Q_gbalo.RecordCount = 0 then
  begin
    try
      DM.T_cat.First;
      for i := 0 to DM.T_cat.RecordCount - 1 do
      begin
        DM.T_import_cat2.Append;
        DM.T_import_cat2.FieldByName('Categorie').AsString :=
          DM.T_cat.FieldByName('Categorie').AsString;
        DM.T_import_cat2.FieldByName('Secteur').AsString :=
          DM.T_cat.FieldByName('Secteur').AsString;
        DM.T_import_cat2.FieldByName('NomEtPrenomElecteur').AsString :=
          DM.T_cat.FieldByName('NomEtPrenomElecteur').AsString;
        DM.T_import_cat2.Post;
        DM.T_cat.Next;
      end;
    Except
      on E: Exception do
        ShowMessage(E.ToString);
    end;

    try

      DM.T_electeur.First;
      for i := 0 to DM.T_electeur.RecordCount - 1 do
      begin
        DM.T_importation.Append;
        DM.T_importation.FieldByName('Raison_Social').AsString :=
          DM.T_electeur.FieldByName('RaisonSocial').AsString;
        DM.T_importation.FieldByName('Referant').AsString :=
          DM.T_electeur.FieldByName('Representant1').AsString;
        DM.T_importation.FieldByName('NomEtPrenomElecteur').AsString :=
          DM.T_electeur.FieldByName('NomEtPrenomElecteur').AsString;
        DM.T_importation.FieldByName('Region').AsString :=
          DM.T_electeur.FieldByName('Region').AsString;
        DM.T_importation.FieldByName('Nom_sim').AsString :=
          DBLookupComboBox1.Text;
        DM.T_importation.Post;
        DM.T_electeur.Next;
      end;
    Except
      on E: Exception do
        ShowMessage(E.ToString);
    end;
  end

  else
  begin
    beep
  end;

  DM.Q_gbalo.Close;
  DM.Q_gbalo.sql.Clear;
  DM.Q_gbalo.sql.Text := 'DELETE FROM `import_jointure` ';
  DM.Q_gbalo.ExecSQL;

  DM.Q_gbalo.Close;
  DM.Q_gbalo.sql.Clear;
  DM.Q_gbalo.sql.Text := 'insert into import_jointure select * from import_cat';
  DM.Q_gbalo.ExecSQL;

end;

end.
