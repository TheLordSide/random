unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.WinXCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Menus;

type
  TForm7 = class(TForm)
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    GridPanel2: TGridPanel;
    GridPanel3: TGridPanel;
    DBNavigator1: TDBNavigator;
    PopupMenu2: TPopupMenu;
    Commerce1: TMenuItem;
    Commerce2: TMenuItem;
    Industrie1: TMenuItem;
    Service1: TMenuItem;
    CommerceA1: TMenuItem;
    CommerceB1: TMenuItem;
    CommerceC1: TMenuItem;
    CommerceD1: TMenuItem;
    IndustrieA1: TMenuItem;
    IndustrieB1: TMenuItem;
    IndustrieC1: TMenuItem;
    IndustrieD1: TMenuItem;
    IndustrieE1: TMenuItem;
    ServiceA1: TMenuItem;
    ServiceB1: TMenuItem;
    ServiceB21: TMenuItem;
    ServiceB31: TMenuItem;
    ServiceB41: TMenuItem;
    ServiceB51: TMenuItem;
    ServiceB61: TMenuItem;
    ServiceC1: TMenuItem;
    ServiceD11: TMenuItem;
    ServiceD1G21: TMenuItem;
    ServiceD1G31: TMenuItem;
    ServiceD1G41: TMenuItem;
    ServiceD1G51: TMenuItem;
    ServiceD21: TMenuItem;
    CommerceD2: TMenuItem;
    Obtenirletat1: TMenuItem;
    CommerceAuniquement1: TMenuItem;
    CommerceA2: TMenuItem;
    CommerceB2: TMenuItem;
    CommerceC2: TMenuItem;
    CommerceD3: TMenuItem;
    CommerceE1: TMenuItem;
    Industrie2: TMenuItem;
    IndustrieA2: TMenuItem;
    IndustrieB2: TMenuItem;
    IndustrieC2: TMenuItem;
    IndustrieD2: TMenuItem;
    IndustrieE2: TMenuItem;
    Service2: TMenuItem;
    ServiceA2: TMenuItem;
    ServiceB2: TMenuItem;
    ServiceC2: TMenuItem;
    ServiceD1: TMenuItem;
    ServiceB42: TMenuItem;
    ServiceB52: TMenuItem;
    ServiceB62: TMenuItem;
    ServiceC3: TMenuItem;
    ServiceD1G11: TMenuItem;
    ServiceD1G22: TMenuItem;
    ServiceD1G32: TMenuItem;
    ServiceD22: TMenuItem;
    DataSource2: TDataSource;
    GridPanel8: TGridPanel;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    GridPanel9: TGridPanel;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SearchBox1Change(Sender: TObject);
    procedure SpeedButton42Click(Sender: TObject);
    procedure CommerceA1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Voirleselecteursselectionnees1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6;

procedure TForm7.CommerceA1Click(Sender: TObject);
var
  i, j: Integer;
  s: string;
  aStringList: TStringList;
begin

  aStringList := TStringList.Create;

end;

procedure TForm7.DBGrid1CellClick(Column: TColumn);
var
  sel: string;
begin


  sel := DM.Q_simulation_C_S_I.FieldByName('NomEtPrenomElecteur').AsString;
  DM.Q_gbalo.Close;
  DM.Q_gbalo.SQL.Text :=
    'update importations set selected=''true'' where NomEtPrenomElecteur =' +
    QuotedStr(sel) + ' ';
  DM.Q_gbalo.ExecSQL;

end;

procedure TForm7.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
const
  CtrlState: array [boolean] of Integer = (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or
    DFCS_CHECKED);
var
  check: Integer;
  r: TRect;
begin
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form3.Show;
end;

procedure TForm7.SearchBox1Change(Sender: TObject);
begin
  { if SearchBox1.Text <> '' then
    begin
    DM.Q_simulation_region.Filtered := false;
    DM.Q_simulation_region.Filter :=
    ('Importations.NomEtPrenomElecteur like ' +
    QuotedStr('%' + SearchBox1.Text + '%') +
    ' or Importations.Raison_Social like ' + QuotedStr('%' + SearchBox1.Text +
    '%') + 'and Import_cat.Nom_sim like ' +
    QuotedStr('%' + DBLookupComboBox1.Text + '%'));
    DM.Q_simulation_region.Filtered := True;
    end
    else
    begin
    DM.Q_liste_generale.Filtered := false;
    end; }

end;

procedure TForm7.SpeedButton1Click(Sender: TObject);
begin
  if ComboBox1.Text = 'TOUS SECTEURS' then
  begin
    DM.Q_simulation_C_S_I.Active := true;
    DataSource1.DataSet := DM.Q_simulation_C_S_I;
  end;
  if ComboBox1.Text = 'COMMERCE ET SERVICE' then
  begin
    DM.Q_simulation_C_S.Active := true;
    DataSource1.DataSet := DM.Q_simulation_C_S
  end;
  if ComboBox1.Text = 'COMMERCE ET INDUSTRIE' then
  begin
    DM.Q_simulation_C_I.Active := true;
    DataSource1.DataSet := DM.Q_simulation_C_I;
  end;
  if ComboBox1.Text = 'INDUSTRIE ET SERVICE' then
  begin

    DM.Q_simulation_I_S.Active := true;
    DataSource1.DataSet := DM.Q_simulation_I_S;
  end;

end;

procedure TForm7.SpeedButton42Click(Sender: TObject);
var
  i: Integer;
begin
  {
    ComboBox1.Enabled := True;
    DM.T_import_cat2.Active := True;
    DM.T_cat.Close;
    DM.T_cat.Open;
    DM.T_electeur.Active := True;
    DM.T_importation.Active := True;

    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text := 'select * from importations where Nom_sim =:p ';
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
    DM.T_import_cat2.FieldByName('Nom_sim').AsString :=
    DBLookupComboBox1.Text;
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
    // DM.T_importation.FieldByName('Region').AsString :=
    // DM.T_electeur.FieldByName('Region').AsString;
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
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text := 'DELETE FROM `import_jointure` ';
    DM.Q_gbalo.ExecSQL;

    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text := 'insert into import_jointure select * from import_cat';
    DM.Q_gbalo.ExecSQL;

    TabSheet1.Hide;
    TabSheet2.Show; }
end;

procedure TForm7.Voirleselecteursselectionnees1Click(Sender: TObject);
var
  i, j: Integer;
  s: string;
  aStringList: TStringList;
begin
  DM.T_import_cat2.Active := true;
  if (DBGrid1.SelectedRows.Count > 0) then
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        DM.T_import_cat2.GotoBookmark(TBookmark(DBGrid1.SelectedRows[i]));
        s := '';
        for j := 0 to DM.T_import_cat2.FieldCount - 1 do
        begin
          if (j > 0) then
            s := s + ', ';
          s := s + DM.T_import_cat2.Fields[j].AsString;
          // s := s + FindField(Fields.Fields[j].FieldName).AsString;
        end;

      end;
end;

end.
