unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.WinXPickers, Vcl.Buttons, Vcl.CheckLst;

type
  TForm4 = class(TForm)
    Dossier: TPanel;
    TabSheet1: TTabSheet;
    GridPanel2: TGridPanel;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GridPanel6: TGridPanel;
    TabSheet4: TTabSheet;
    GridPanel7: TGridPanel;
    PageControl1: TPageControl;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    ListBox2: TListBox;
    CheckListBox1: TCheckListBox;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ListBox1: TListBox;
    Label10: TLabel;
    Label1: TLabel;
    Panel2: TPanel;
    Label21: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Edit5: TEdit;
    ToggleSwitch13: TToggleSwitch;
    Label9: TLabel;
    DateTimePicker5: TDateTimePicker;
    ToggleSwitch1: TToggleSwitch;
    Label15: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label14: TLabel;
    ComboBox1: TComboBox;
    ToggleSwitch3: TToggleSwitch;
    Label16: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label17: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Label18: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    Label19: TLabel;
    GridPanel16: TGridPanel;
    RadioButton7: TRadioButton;
    RadioButton6: TRadioButton;
    ToggleSwitch4: TToggleSwitch;
    Label20: TLabel;
    Edit15: TEdit;
    GridPanel3: TGridPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel3: TPanel;
    Label22: TLabel;
    Label6: TLabel;
    Edit6: TEdit;
    ToggleSwitch5: TToggleSwitch;
    Label11: TLabel;
    Edit8: TEdit;
    ToggleSwitch6: TToggleSwitch;
    Label12: TLabel;
    Edit11: TEdit;
    ToggleSwitch7: TToggleSwitch;
    Label13: TLabel;
    Edit12: TEdit;
    ToggleSwitch8: TToggleSwitch;
    Label8: TLabel;
    Edit4: TEdit;
    Label26: TLabel;
    Edit19: TEdit;
    ToggleSwitch10: TToggleSwitch;
    DateTimePicker3: TDateTimePicker;
    Label27: TLabel;
    ToggleSwitch11: TToggleSwitch;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Panel4: TPanel;
    Label23: TLabel;
    CheckListBox2: TCheckListBox;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    ListBox3: TListBox;
    Panel5: TPanel;
    Label24: TLabel;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    Label25: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Panel6: TPanel;
    CheckListBox3: TCheckListBox;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    ListBox4: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ToggleSwitch6Click(Sender: TObject);
    procedure ToggleSwitch7Click(Sender: TObject);
    procedure ToggleSwitch8Click(Sender: TObject);
    procedure ToggleSwitch10Click(Sender: TObject);
    procedure ToggleSwitch11Click(Sender: TObject);
    procedure ToggleSwitch1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ToggleSwitch13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure ToggleSwitch5Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure DateTimePicker5Change(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure ToggleSwitch3Click(Sender: TObject);
    procedure ToggleSwitch4Click(Sender: TObject);
    procedure DateTimePicker3Change(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form4: TForm4;
  comcat, IndA, IndB, IndC, IndD, IndE, SerA, SerB1, SerB2, SerB3, SerB4, SerB5,
    SerB6, SerC, SerD1G1, SerD1G2, SerD1G3, SerD2, Com, Ser, XYZ, Ind, SerD1G4,
    CCIT, QF, CFE, PI, Photo, Quitus_CCIT, SerD1G5, typevotant: string;
  checkstatu: Integer;
  p, TreeView: OleVariant;
  chemin: WideString;
  i: Integer;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit5, Unit6;

procedure TForm4.Button1Click(Sender: TObject);
begin
  TabSheet1.Hide;
  TabSheet2.Show;
  TabSheet2.SetFocus
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  DM.Q_gbalo.Close;
  DM.Q_gbalo.SQL.Text :=
    'select * from electeur where NomEtPrenomElecteur=:p and RaisonSocial=:m';
  DM.Q_gbalo.Params.ParamByName('p').Value := Edit1.Text;
  DM.Q_gbalo.Params.ParamByName('m').Value := Edit15.Text;
  DM.Q_gbalo.Open;
  if DM.Q_gbalo.RecordCount > 0 then
  begin
    ShowMessage('L''electeur ' + Edit1.Text + 'pour la Rasion Sociale' +
      Edit15.Text + ' existe deja.');
    exit;
  end;
  TabSheet2.Hide;
  TabSheet3.Show;
  TabSheet3.SetFocus

end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  TabSheet2.Hide;
  TabSheet1.Show;
  TabSheet1.SetFocus;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
  TabSheet3.Hide;
  TabSheet4.Show;
  TabSheet4.SetFocus

end;

procedure TForm4.Button5Click(Sender: TObject);
begin
  TabSheet2.Show;
  TabSheet3.Hide;
  TabSheet2.SetFocus
end;

procedure TForm4.Button6Click(Sender: TObject);
begin
  DM.Q_gbalo.Close;
  DM.Q_gbalo.SQL.Text :=
    'insert into pieces (Nompiece, NomEtPrenomElecteur) values (' +
    QuotedStr(CCIT) + ', ' + QuotedStr(Edit1.Text) + '),' + '(' + QuotedStr(CFE)
    + ', ' + QuotedStr(Edit1.Text) + '),' + '(' + QuotedStr(Photo) + ',' +
    QuotedStr(Edit1.Text) + '),' + '(' + QuotedStr(PI) + ',' +
    QuotedStr(Edit1.Text) + '),' + '(' + QuotedStr(QF) + ',' +
    QuotedStr(Edit1.Text) + '),' + '(' + QuotedStr(Quitus_CCIT) + ', ' +
    QuotedStr(Edit1.Text) + ');';
  DM.Q_gbalo.ExecSQL;

  DM.Q_gbalo.Close;
  DM.Q_gbalo.SQL.Text :=
    'Insert into categories(Secteur, Categorie, NomEtPrenomElecteur, NIF) values ('
    + QuotedStr(Com) + ', ' + QuotedStr(comcat) + ', ' + QuotedStr(Edit1.Text) +
    ', ' + QuotedStr(Edit6.Text) + '), ' + ' (' + QuotedStr(Ind) + ', ' +
    QuotedStr(IndA) + ', ' + QuotedStr(Edit1.Text) + ', ' +
    QuotedStr(Edit6.Text) + '), ' + ' (' + QuotedStr(Ind) + ', ' +
    QuotedStr(IndB) + ', ' + QuotedStr(Edit1.Text) + ', ' +
    QuotedStr(Edit6.Text) + '), ' + ' (' + QuotedStr(Ind) + ', ' +
    QuotedStr(IndC) + ', ' + QuotedStr(Edit1.Text) + ', ' +
    QuotedStr(Edit6.Text) + '), ' + ' (' + QuotedStr(Ind) + ', ' +
    QuotedStr(IndD) + ', ' + QuotedStr(Edit1.Text) + ', ' +
    QuotedStr(Edit6.Text) + '), ' + ' (' + QuotedStr(Ind) + ', ' +
    QuotedStr(IndE) + ', ' + QuotedStr(Edit1.Text) + ', ' +
    QuotedStr(Edit6.Text) + '),' + ' (' + QuotedStr(Ser) + ', ' +
    QuotedStr(SerA) + ', ' + QuotedStr(Edit1.Text) + ', ' +
    QuotedStr(Edit6.Text) + '), ' + ' (' + QuotedStr(Ser) + ', ' +
    QuotedStr(SerB1) + ', ' + QuotedStr(Edit1.Text) + ', ' +
    QuotedStr(Edit6.Text) + '), ' + ' (' + QuotedStr(Ser) + ', ' +
    QuotedStr(SerB2) + ', ' + QuotedStr(Edit1.Text) + ', ' +
    QuotedStr(Edit6.Text) + '), ' + '  (' + QuotedStr(Ser) + ', ' +
    QuotedStr(SerB3) + ', ' + QuotedStr(Edit1.Text) + ', ' +
    QuotedStr(Edit6.Text) + '), ' + ' (' + QuotedStr(Ser) + ', ' +
    QuotedStr(SerB4) + ', ' + QuotedStr(Edit1.Text) + ', ' +
    QuotedStr(Edit6.Text) + '), ' + ' (' + QuotedStr(Ser) + ', ' +
    QuotedStr(SerB5) + ', ' + QuotedStr(Edit1.Text) + ', ' +
    QuotedStr(Edit6.Text) + '), ' + ' (' + QuotedStr(Ser) + ', ' +
    QuotedStr(SerB6) + ', ' + QuotedStr(Edit1.Text) + ', ' +
    QuotedStr(Edit6.Text) + '),' + ' (' + QuotedStr(Ser) + ', ' +
    QuotedStr(SerD1G1) + ', ' + QuotedStr(Edit1.Text) + ', ' +
    QuotedStr(Edit6.Text) + '), ' + '(' + QuotedStr(Ser) + ', ' +
    QuotedStr(SerD1G2) + ', ' + QuotedStr(Edit1.Text) + ', ' +
    QuotedStr(Edit6.Text) + '), ' + ' (' + QuotedStr(Ser) + ', ' +
    QuotedStr(SerD1G3) + ', ' + QuotedStr(Edit1.Text) + ', ' +
    QuotedStr(Edit6.Text) + '), ' + ' (' + QuotedStr(Ser) + ', ' +
    QuotedStr(SerD1G4) + ', ' + QuotedStr(Edit1.Text) + ', ' +
    QuotedStr(Edit6.Text) + '), ' + ' (' + QuotedStr(Ser) + ', ' +
    QuotedStr(SerD2) + ', ' + QuotedStr(Edit1.Text) + ', ' +
    QuotedStr(Edit6.Text) + '), ' + ' (' + QuotedStr(Ser) + ',' +
    QuotedStr(SerD1G5) + ',' + QuotedStr(Edit1.Text) + ',' +
    QuotedStr(Edit6.Text) + '), ' + ' (' + QuotedStr(Ser) + ', ' +
    QuotedStr(SerC) + ', ' + QuotedStr(Edit1.Text) + ', ' +
    QuotedStr(Edit6.Text) + '); ';
  DM.Q_gbalo.ExecSQL;
  ShowMessage('Enregistrement effectué');
  { DM.Q_delete_cate_vide.ExecSQL;
    DM.Q_delete_piece_vide.ExecSQL; }
  Edit1.Clear;
  // pieces a fournir

  // identite de la personne
  Edit1.Clear;
  Edit3.Clear;
  Edit2.Clear;
  Edit5.Clear;
  Edit15.Clear;
  RadioButton6.Checked := false;
  RadioButton7.Checked := false;
  // identite de la soiciete
  Edit6.Clear;
  Edit8.Clear;
  Edit11.Clear;
  Edit12.Clear;
  Edit4.Clear;
  Edit19.Clear;
  // choix categorie

end;

procedure TForm4.Button7Click(Sender: TObject);
begin
  TabSheet2.Show;
  TabSheet3.Hide;
  TabSheet2.SetFocus
end;

procedure TForm4.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.Text = 'LC' then
  begin
    Panel6.Visible := true;
  end;
  if ComboBox1.Text <> 'LC' then
  begin
    Panel6.Visible := false;
  end;
end;

procedure TForm4.DateTimePicker1Change(Sender: TObject);
begin
  Label28.Caption := DateToStr(DateTimePicker1.Date);
end;

procedure TForm4.DateTimePicker3Change(Sender: TObject);
begin
  Label29.Caption := DateToStr(DateTimePicker3.Date);
end;

procedure TForm4.DateTimePicker5Change(Sender: TObject);
begin
  Label25.Caption := DateToStr(DateTimePicker5.Date);
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form3.Show;
end;

procedure TForm4.RadioButton6Click(Sender: TObject);
begin
  if RadioButton6.Checked = true then
  begin
    typevotant := 'votant';
  end
end;

procedure TForm4.RadioButton7Click(Sender: TObject);
begin
  if RadioButton7.Checked = true then
  begin
    typevotant := 'procuration';
  end;
end;

procedure TForm4.SpeedButton10Click(Sender: TObject);
var
  i: Integer;
begin
  ListBox3.Items.Clear;
  for i := 0 to CheckListBox2.Count - 1 do
  begin
    if CheckListBox2.Checked[i] = true then
    begin
      ListBox3.Items.Add(CheckListBox2.Items[i]);
    end;
  end;
end;

procedure TForm4.SpeedButton11Click(Sender: TObject);
var
  i: Integer;
begin
  ListBox4.Items.Clear;
  for i := 0 to CheckListBox3.Count - 1 do
  begin
    if CheckListBox3.Checked[i] = true then
    begin
      ListBox4.Items.Add(CheckListBox3.Items[i]);
    end;
  end;
end;

procedure TForm4.SpeedButton12Click(Sender: TObject);
begin
  ListBox4.Items.Clear;
end;

procedure TForm4.SpeedButton14Click(Sender: TObject);
var
  i: Integer;
begin
  // Enregistrement des infos  eleteurs
  DM.T_electeur.Active := true;
  DM.T_electeur.Append;
  DM.T_electeur.FieldByName('NomEtPrenomElecteur').AsString := Edit1.Text;
  DM.T_electeur.FieldByName('TypePieceId').AsString := ComboBox2.Text;
  DM.T_electeur.FieldByName('DateDelivrance').AsString := Label25.Caption;
  DM.T_electeur.FieldByName('DateExpiration').AsString := Label28.Caption;
  DM.T_electeur.FieldByName('NumeroCarte').AsString := Edit5.Text;
  DM.T_electeur.FieldByName('RaisonSocial').AsString := Edit1.Text;
  DM.T_electeur.FieldByName('NumRCCM').AsString := Edit8.Text;
  DM.T_electeur.FieldByName('NumCFE').AsString := Edit11.Text;
  DM.T_electeur.FieldByName('NumCCIT').AsString := Edit12.Text;
  DM.T_electeur.FieldByName('Anneedbutactivite').AsString := Edit4.Text;
  DM.T_electeur.FieldByName('Representant1').AsString := Edit2.Text;
  DM.T_electeur.FieldByName('Representant2').AsString := Edit9.Text;
  DM.T_electeur.FieldByName('NIF').AsString := Edit6.Text;
  DM.T_electeur.FieldByName('type').AsString := typevotant;
  DM.T_electeur.FieldByName('Adresse').AsString := Edit13.Text;;
  DM.T_electeur.FieldByName('Tel').AsString := Edit14.Text;
  DM.T_electeur.FieldByName('Tel_rep1').AsString := Edit3.Text;
  DM.T_electeur.FieldByName('Tel_rep2').AsString := Edit10.Text;
  DM.T_electeur.FieldByName('NumQuittusFiscal').AsString := Edit19.Text;
  DM.T_electeur.FieldByName('datexpirationCFE').AsString := Label29.Caption;
  DM.T_electeur.FieldByName('Region').AsString := ComboBox1.Text;
  DM.T_electeur.Post;
  // Enregistrement des pieces
  for i := 0 to ListBox2.Count - 1 do
  begin
    DM.T_piece.Active := true;
    DM.T_piece.Append;
    DM.T_piece.FieldByName('Nompiece').AsString := ListBox2.Items[i];
    DM.T_piece.FieldByName('NomEtPrenomElecteur').AsString := Edit1.Text;
    DM.T_piece.Post;
  end;
  // Enregistrement des pieces manquantes
  for i := 0 to ListBox1.Count - 1 do
  begin
    DM.T_manquante.Active := true;
    DM.T_manquante.Append;
    DM.T_manquante.FieldByName('Libelle_piece').AsString := ListBox1.Items[i];
    DM.T_manquante.FieldByName('NomEtPrenomElecteur').AsString := Edit1.Text;
    DM.T_manquante.Post;
  end;
  DM.T_cat.Active := true;
  // Enregistrement des categories

  if ComboBox1.Text <> 'LC' then
  begin
    for i := 0 to ListBox3.Count - 1 do
    begin
      DM.T_cat.Append;
      DM.T_cat.FieldByName('Secteur').AsString := ListBox3.Items[i];
      DM.T_cat.FieldByName('NomEtPrenomElecteur').AsString := Edit1.Text;
      DM.T_cat.Post;
    end;

  end;
  if ComboBox1.Text = 'LC' then
  begin
    for i := 0 to ListBox4.Count - 1 do
    begin
      DM.T_cat.Append;
      DM.T_cat.FieldByName('Categorie').AsString := ListBox4.Items[i];
      DM.T_cat.FieldByName('NomEtPrenomElecteur').AsString := Edit1.Text;
      DM.T_cat.Post;
    end;

    // Update Commerce
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update categories set Secteur=''Commerce'' where categorie like ''%Com%'' '
      + 'and  NomEtPrenomElecteur =:p';
    DM.Q_gbalo.Params.ParamByName('p').Value := Edit1.Text;
    DM.Q_gbalo.ExecSQL;

    // Update Service
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update categories set Secteur=''Service'' where categorie like ''%Ser%'' '
      + 'and  NomEtPrenomElecteur =:p';
    DM.Q_gbalo.Params.ParamByName('p').Value := Edit1.Text;
    DM.Q_gbalo.ExecSQL;

    // Update Industrie
    DM.Q_gbalo.Close;
    DM.Q_gbalo.SQL.Clear;
    DM.Q_gbalo.SQL.Text :=
      'update categories set Secteur=''Industrie'' where categorie like ''%Ind%'' '
      + 'and  NomEtPrenomElecteur =:p';
    DM.Q_gbalo.Params.ParamByName('p').Value := Edit1.Text;
    DM.Q_gbalo.ExecSQL;
  end;
  ShowMessage('success');
end;

procedure TForm4.SpeedButton15Click(Sender: TObject);
var
  CompareVal: string;
  i, j: Integer;
begin
  DM.Q_piece.Active := true;
  DM.Q_piece.First;
  DM.T_manquante.Active := true;
  while not DM.Q_piece.Eof do
  begin
    CompareVal := DM.Q_piece.FieldByName('Nompiece').AsString;
    if not DM.UniQuery3.Locate('Nom_p', CompareVal, []) then
    begin
      DM.T_manquante.Append; // Or Dest.Append;
      DM.T_manquante.FieldByName('Libelle_piece').AsString := CompareVal;
      DM.T_manquante.FieldByName('NomEtPrenomElecteur').AsString :=
        DM.Q_piece.FieldByName('NomEtPrenomElecteur').AsString;
      DM.T_manquante.Post;
    end;
    DM.Q_piece.Next;
  end;
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
  Self.Close;
  Form3.Show;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);

begin
  if ListBox2.Count = 0 then
  begin
    ShowMessage('Aucune piece n''a ete choisie');
    exit
  end
  else
    TabSheet1.Hide;
  TabSheet2.Show;
end;

procedure TForm4.SpeedButton3Click(Sender: TObject);
var
  i: Integer;
begin
  ListBox2.Items.Clear;
  ListBox1.Items.Clear;
  for i := 0 to CheckListBox1.Count - 1 do
  begin
    if CheckListBox1.Checked[i] = true then
    begin
      ListBox2.Items.Add(CheckListBox1.Items[i]);
    end;
    if CheckListBox1.Checked[i] = false then
    begin
      ListBox1.Items.Add(CheckListBox1.Items[i])
    end;
  end;

end;

procedure TForm4.SpeedButton4Click(Sender: TObject);
begin
  ListBox2.Items.Clear;
  ListBox1.Items.Clear;
end;

procedure TForm4.SpeedButton6Click(Sender: TObject);
begin
  TabSheet2.Hide;
  TabSheet3.Show;
end;

procedure TForm4.SpeedButton7Click(Sender: TObject);
begin
  TabSheet3.Hide;
  TabSheet4.Show;
end;

procedure TForm4.SpeedButton9Click(Sender: TObject);
begin
  ListBox3.Items.Clear;

end;

procedure TForm4.ToggleSwitch10Click(Sender: TObject);
begin
  if ToggleSwitch10.State = tssOn then
  begin
    Edit19.Enabled := true
  end
  else
  begin
    Edit19.Text := '';
    Edit19.Enabled := false
  end;
end;

procedure TForm4.ToggleSwitch11Click(Sender: TObject);
begin
  if ToggleSwitch11.State = tssOn then
  begin
    DateTimePicker3.Enabled := true
  end
  else
  begin
    Label29.Caption := '';
    DateTimePicker3.Enabled := false
  end;
end;

procedure TForm4.ToggleSwitch13Click(Sender: TObject);
begin
  if ToggleSwitch13.State = tssOn then
  begin
    Edit5.Enabled := true
  end
  else
  begin
    Edit5.Enabled := false;
    Edit5.Text := ''
  end;
end;

procedure TForm4.ToggleSwitch1Click(Sender: TObject);
begin
  if ToggleSwitch1.State = tssOn then
  begin
    DateTimePicker5.Enabled := true;
  end
  else
  begin
    Label25.Caption := '';
    DateTimePicker5.Enabled := false
  end;
end;

procedure TForm4.ToggleSwitch3Click(Sender: TObject);
begin
  if ToggleSwitch3.State = tssOn then
  begin
    DateTimePicker1.Enabled := true;
  end
  else
  begin
    Label28.Caption := '';
    DateTimePicker1.Enabled := false
  end;
end;

procedure TForm4.ToggleSwitch4Click(Sender: TObject);
begin
  if ToggleSwitch4.State = tssOn then
  begin
    GridPanel16.Enabled := true;
  end
  else
  begin
    GridPanel16.Enabled := false;
    RadioButton7.Checked := false;
    RadioButton6.Checked := false;
  end;
end;

procedure TForm4.ToggleSwitch5Click(Sender: TObject);
begin
  if ToggleSwitch5.State = tssOn then
  begin
    Edit6.Enabled := true
  end
  else
  begin
    Edit6.Text := '';
    Edit6.Enabled := false
  end;
end;

procedure TForm4.ToggleSwitch6Click(Sender: TObject);
begin
  if ToggleSwitch6.State = tssOn then
  begin
    Edit8.Enabled := true
  end
  else
  begin
    Edit8.Text := '';
    Edit8.Enabled := false
  end;
end;

procedure TForm4.ToggleSwitch7Click(Sender: TObject);
begin
  if ToggleSwitch7.State = tssOn then
  begin
    Edit11.Enabled := true
  end
  else
  begin
    Edit11.Text := '';
    Edit11.Enabled := false
  end;
end;

procedure TForm4.ToggleSwitch8Click(Sender: TObject);
begin
  if ToggleSwitch8.State = tssOn then
  begin
    Edit12.Enabled := true
  end
  else
  begin
    Edit12.Text := '';
    Edit12.Enabled := false
  end;
end;

end.
