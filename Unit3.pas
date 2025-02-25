unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Panel_menu: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel_toolbar: TPanel;
    Panel_dossier: TPanel;
    Label2: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    SpeedButton3: TSpeedButton;
    Panel3: TPanel;
    Label5: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Panel4: TPanel;
    Label6: TLabel;
    SpeedButton9: TSpeedButton;
    Panel5: TPanel;
    Label7: TLabel;
    SpeedButton10: TSpeedButton;
    Panel6: TPanel;
    Label8: TLabel;
    SpeedButton13: TSpeedButton;
    Panel7: TPanel;
    Label9: TLabel;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10, Unit11,
  Unit12, Unit13, Unit14, Unit15, Unit16, Unit18;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate
end;

procedure TForm3.SpeedButton10Click(Sender: TObject);
var
  i: integer;
begin
  DM.Q_delete_jointure.ExecSQL;
  DM.Q_insert_Into_another_table.ExecSQL;
  DM.Q_liste_generale_Region.Close;
  DM.Q_liste_generale_Region.Open;
  DM.Q_gbalo.Close;
  DM.Q_gbalo.SQL.Clear;
  DM.Q_gbalo.SQL.Text :=
    'select region from electeur where electeur.region <>'' '' or electeur.region is not null group by region ';
  DM.Q_gbalo.Open;
  for i := 0 to DM.Q_gbalo.RecordCount - 1 do
  begin
    RECHERCHE_DOSSIER_REGION.ComboBox1.Items.Add
      (DM.Q_gbalo.FieldByName('region').AsString);
    RECHERCHE_DOSSIER_REGION.ComboBox2.Items.Add
      (DM.Q_gbalo.FieldByName('region').AsString);
    DM.Q_gbalo.Next;
  end;
  RECHERCHE_DOSSIER_REGION.show;
  self.Hide;
end;

procedure TForm3.SpeedButton11Click(Sender: TObject);
var
  i: integer;
begin
  DM.Q_gbalo.Close;
  DM.Q_gbalo.SQL.Clear;
  DM.Q_gbalo.SQL.Text :=
    'select distinct(region) from electeur group by region ';
  DM.Q_gbalo.Open;
  for i := 0 to DM.Q_gbalo.RecordCount - 1 do
  begin
    Form11.ComboBox1.Items.Add(DM.Q_gbalo.FieldByName('region').AsString);
    DM.Q_gbalo.Next;
  end;
  Form11.show;
  self.Hide
end;

procedure TForm3.SpeedButton12Click(Sender: TObject);
var
  i: integer;
begin
  DM.Q_gbalo.Close;
  DM.Q_gbalo.SQL.Clear;
  DM.Q_gbalo.SQL.Text :=
    'select Representant1 from electeur group by Representant1 ';
  DM.Q_gbalo.Open;
  for i := 0 to DM.Q_gbalo.RecordCount - 1 do
  begin
    Form12.ComboBox1.Items.Add(DM.Q_gbalo.FieldByName('Representant1')
      .AsString);
    DM.Q_gbalo.Next;
  end;
  self.Hide;
  Form12.show;
end;

procedure TForm3.SpeedButton13Click(Sender: TObject);
begin
  Form16.show;
  self.Hide;
end;

procedure TForm3.SpeedButton14Click(Sender: TObject);
var
  i: integer;
begin
  DM.Q_gbalo.Close;
  DM.Q_gbalo.SQL.Clear;
  DM.Q_gbalo.SQL.Text := 'select Nompiece from pieces group by Nompiece ';
  DM.Q_gbalo.Open;
  for i := 0 to DM.Q_gbalo.RecordCount - 1 do
  begin
    Form5.ComboBox1.Items.Add(DM.Q_gbalo.FieldByName('Nompiece').AsString);
    DM.Q_gbalo.Next;
  end;
  self.Hide;
  Form5.show;
end;

procedure TForm3.SpeedButton16Click(Sender: TObject);
var
  CompareVal: string;
begin
  DM.Q_piece.Active := True;
  DM.T_manquante.Active := True;
  DM.Q_piece.First;
  while not DM.Q_piece.Eof do
  begin
    CompareVal := DM.Q_piece.FieldByName('Nompiece').AsString;
    if not DM.UniQuery3.Locate('Nom_p', CompareVal, []) then
    begin
      DM.T_manquante.append; // Or Dest.Append;
      DM.T_manquante.FieldByName('Libelle_piece').AsString := CompareVal;
      DM.T_manquante.FieldByName('NomEtPrenomElecteur').AsString :=
        DM.UniQuery3.FieldByName('Nom_p').AsString;
      DM.Q_piece.FieldByName('NomEtPrenomElecteur').AsString;
      DM.T_manquante.Post;
    end;
    DM.Q_piece.Next;
  end;

end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
  Form4.show;
  self.Hide
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
var
  i: integer;
begin
  DM.frxDBDataset5.DataSet := DM.Q_liste_generale;
  DM.frxreport3.ShowReport(True);
  {
    DM.T_import_cat2.Active := True;
    DM.T_cat.Close;
    DM.T_cat.Open;
    DM.T_electeur.Active := True;
    DM.T_importation.Active := True;

    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text := 'select * from importations where Nom_sim =:p ';
    DM.Q_gbalo.Params.ParamByName('p').Value := 'TEST 03';
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
    DM.T_import_cat2.FieldByName('Nom_sim').AsString := 'TEST 03';
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
    DM.T_importation.FieldByName('Nom_sim').AsString := 'TEST 03';
    DM.T_importation.FieldByName('selected').AsString := 'false';
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
    self.Hide;
    form7.show }

  { self.Hide;
    //COM A
    Form16.Label17.Caption := IntToStr(DM.Q_liste_COm_catA.RecordCount);
    Form16.Label9.Caption := IntToStr(DM.Q_liste_electeur_COM_A_UNIQUE.RecordCount);
    Form16.Label10.Caption:= IntToStr (StrToInt( Form16.Label17.Caption)- StrToInt( Form16.Label9.Caption));
    //COM B
    Form16.Label18.Caption := IntToStr(DM.Q_liste_Com_catB.RecordCount);
    Form16.Label11.Caption := IntToStr(DM.Q_liste_electeur_COM_B_UNIQUE.RecordCount);
    Form16.Label12.Caption:= IntToStr (StrToInt( Form16.Label18.Caption)- StrToInt( Form16.Label11.Caption));
    //COM C
    Form16.Label19.Caption := IntToStr(DM.Q_liste_com_catC.RecordCount);
    Form16.Label13.Caption := IntToStr(DM.Q_liste_COM_C_UNIQUE.RecordCount);
    Form16.Label14.Caption:= IntToStr (StrToInt( Form16.Label19.Caption)- StrToInt( Form16.Label13.Caption));
    //COM D
    Form16.Label20.Caption := IntToStr(DM.Q_liste_COM_catD.RecordCount);
    Form16.Label15.Caption := IntToStr(DM.Q_liste_COM_D_UNIQUE.RecordCount);
    Form16.Label16.Caption:= IntToStr (StrToInt( Form16.Label20.Caption)- StrToInt( Form16.Label15.Caption));
    //COM XYZ
    Form16.Label21.Caption := IntToStr(DM.Q_liste_COM_catXYZ.RecordCount);
    Form16.Label24.Caption := IntToStr(DM.Q_liste_COM_XYZ_UNIQUE.RecordCount);
    Form16.Label25.Caption:= IntToStr (StrToInt( Form16.Label21.Caption)- StrToInt( Form16.Label24.Caption));

    Form16.show }

end;

procedure TForm3.SpeedButton4Click(Sender: TObject);

begin
  DM.frxDBDataset1.DataSet := DM.Q_liste_generale_Region;
  DM.frxReport1.ShowReport(True);
end;

procedure TForm3.SpeedButton5Click(Sender: TObject);
var
  i: integer;
begin

  DM.Q_gbalo.Close;
  DM.Q_gbalo.SQL.Text :=
    'Select distinct(Representant1)from electeur where region=''LC'' ORDER BY `electeur`.`Representant1` ASC';
  DM.Q_gbalo.ExecSQL;
  for i := 0 to DM.Q_gbalo.RecordCount - 1 do
  begin
    Form8.ComboBox1.Items.Add(DM.Q_gbalo.FieldByName('Representant1').AsString);
    Form8.ComboBox2.Items.Add(DM.Q_gbalo.FieldByName('Representant1').AsString);
    DM.Q_gbalo.Next;
  end;
  self.Hide;
  Form8.show;
end;

procedure TForm3.SpeedButton6Click(Sender: TObject);
var
  i: integer;
begin
  RECHERCHE_DOSSIER_REGION.show;
  DM.Q_gbalo.Close;
  DM.Q_gbalo.SQL.Text :=
    'Select distinct(Region)from electeur where region<>''LC'' ORDER BY `electeur`.`Representant1` ASC';
  DM.Q_gbalo.ExecSQL;
  for i := 0 to DM.Q_gbalo.RecordCount - 1 do
  begin
    RECHERCHE_DOSSIER_REGION.ComboBox1.Items.Add
      (DM.Q_gbalo.FieldByName('Region').AsString);
    RECHERCHE_DOSSIER_REGION.ComboBox3.Items.Add
      (DM.Q_gbalo.FieldByName('Region').AsString);
    RECHERCHE_DOSSIER_REGION.ComboBox4.Items.Add
      (DM.Q_gbalo.FieldByName('Region').AsString);
    RECHERCHE_DOSSIER_REGION.ComboBox2.Items.Add
      (DM.Q_gbalo.FieldByName('Region').AsString);
    DM.Q_gbalo.Next;
  end;
  DM.Q_gbalo.Close;
  DM.Q_gbalo.SQL.Text :=
    'Select distinct(Representant1)from electeur where region<>''LC'' ORDER BY `electeur`.`Representant1` ASC';
  DM.Q_gbalo.ExecSQL;
  for i := 0 to DM.Q_gbalo.RecordCount - 1 do
  begin
    RECHERCHE_DOSSIER_REGION.ComboBox5.Items.Add
      (DM.Q_gbalo.FieldByName('Representant1').AsString);
    DM.Q_gbalo.Next;
  end;

  self.Hide;
end;

procedure TForm3.SpeedButton7Click(Sender: TObject);
begin
  Form13.show;
  self.Hide;
end;

procedure TForm3.SpeedButton8Click(Sender: TObject);
begin
  Form14.show;
  self.Hide;
end;

procedure TForm3.SpeedButton9Click(Sender: TObject);
begin
  form18.show;
  self.Hide
end;

end.
