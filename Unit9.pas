unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.WinXCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TRECHERCHE_DOSSIER_REGION = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DataSource1: TDataSource;
    GridPanel30: TGridPanel;
    SpeedButton43: TSpeedButton;
    SpeedButton44: TSpeedButton;
    SpeedButton45: TSpeedButton;
    GridPanel33: TGridPanel;
    SpeedButton48: TSpeedButton;
    SpeedButton49: TSpeedButton;
    GridPanel34: TGridPanel;
    SpeedButton50: TSpeedButton;
    SpeedButton51: TSpeedButton;
    GroupBox2: TGroupBox;
    GridPanel2: TGridPanel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Panel_dossier: TPanel;
    Label13: TLabel;
    Panel1: TPanel;
    Label14: TLabel;
    Panel2: TPanel;
    Label15: TLabel;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label1: TLabel;
    ComboBox3: TComboBox;
    Label3: TLabel;
    ComboBox4: TComboBox;
    Label4: TLabel;
    Edit3: TEdit;
    ComboBox5: TComboBox;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton43Click(Sender: TObject);
    procedure SpeedButton44Click(Sender: TObject);
    procedure SpeedButton45Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton48Click(Sender: TObject);
    procedure SpeedButton49Click(Sender: TObject);
    procedure SpeedButton50Click(Sender: TObject);
    procedure SpeedButton51Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  RECHERCHE_DOSSIER_REGION: TRECHERCHE_DOSSIER_REGION;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

procedure TRECHERCHE_DOSSIER_REGION.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Form3.Show;
end;

procedure TRECHERCHE_DOSSIER_REGION.SpeedButton1Click(Sender: TObject);
begin
  if ComboBox1.Text <> '' then
  begin
    DM.Q_liste_generale_Region.Filtered := false;
    DM.Q_liste_generale_Region.Filter :=
      ('Representant1 like ' + QuotedStr('%' + ComboBox5.Text + '%')) + ' and '
      + ('Region like ' + QuotedStr('%' + ComboBox1.Text + '%'));
    DM.Q_liste_generale_Region.Filtered := True;

  end
  else
  begin
    DM.Q_liste_generale_Region.Filtered := false;
  end;

  DM.frxReport1.ShowReport(True);
end;

procedure TRECHERCHE_DOSSIER_REGION.SpeedButton2Click(Sender: TObject);
begin
  if ComboBox4.Text <> '' then
  begin
    DM.Q_liste_generale_Region.Filtered := false;
    DM.Q_liste_generale_Region.Filter :=
      ('RaisonSocial   like ' + QuotedStr('%' + Edit3.Text + '%')) + ' and ' +
      ('Region like ' + QuotedStr('%' + ComboBox4.Text + '%'));
    DM.Q_liste_generale_Region.Filtered := True;

  end
  else
  begin
    DM.Q_liste_generale_Region.Filtered := false;

  end;
  DM.frxReport1.ShowReport(True);
end;

procedure TRECHERCHE_DOSSIER_REGION.SpeedButton3Click(Sender: TObject);
begin
  if ComboBox3.Text <> '' then
  begin
    DM.Q_liste_generale_Region.Filtered := false;
    DM.Q_liste_generale_Region.Filter :=
      ('NomEtPrenomElecteur  like ' + QuotedStr('%' + Edit2.Text + '%')) +
      ' and ' + ('Region like ' + QuotedStr('%' + ComboBox3.Text + '%'));
    DM.Q_liste_generale_Region.Filtered := True;
    DM.frxReport1.ShowReport(True);
  end
  else
  begin
    DM.Q_liste_generale_Region.Filtered := false;
  end;
  DM.frxReport1.ShowReport(True);
end;

procedure TRECHERCHE_DOSSIER_REGION.SpeedButton43Click(Sender: TObject);
begin
    if ComboBox2.Text <> '' then
  begin
    DM.Q_liste_electeur_unique_region_Commerce.Filtered := false;
    DM.Q_liste_electeur_unique_region_Commerce.Filter :=
      ('Region like ' + QuotedStr('%' + ComboBox2.Text + '%'));
    DM.Q_liste_electeur_unique_region_Commerce.Filtered := True;
  end
  else
  begin
    DM.Q_liste_electeur_unique_region_Commerce.Filtered := false;
  end;

  DM.frxDBDataset1.DataSet := DM.Q_liste_electeur_unique_region_Commerce;
  DM.frxReport1.ShowReport(True);
end;

procedure TRECHERCHE_DOSSIER_REGION.SpeedButton44Click(Sender: TObject);
begin
  if ComboBox2.Text <> '' then
  begin
    DM.Q_liste_electeur_unique_region_Industrie.Filtered := false;
    DM.Q_liste_electeur_unique_region_Industrie.Filter :=
      ('Region like ' + QuotedStr('%' + ComboBox2.Text + '%'));
    DM.frxDBDataset_electeur_region_unique.DataSet :=
      DM.Q_liste_electeur_unique_region_Industrie;

  end
  else
  begin
    DM.Q_liste_electeur_unique_region_Industrie.Filtered := false;
  end;
  DM.frxDBDataset1.DataSet := DM.Q_liste_electeur_unique_region_Industrie;
  DM.frxReport1.ShowReport(True);
end;

procedure TRECHERCHE_DOSSIER_REGION.SpeedButton45Click(Sender: TObject);
begin
  if ComboBox2.Text <> '' then
  begin
    DM.Q_liste_electeur_unique_region_Service.Filtered := false;
    DM.Q_liste_electeur_unique_region_Service.Filter :=
      ('Region like ' + QuotedStr('%' + ComboBox2.Text + '%'));
    DM.frxDBDataset_electeur_region_unique.DataSet :=
      DM.Q_liste_electeur_unique_region_Service;
    DM.frxReport4.ShowReport(True);
  end
  else
  begin
    DM.Q_liste_electeur_unique_region_Service.Filtered := false;
  end;
  DM.frxDBDataset1.DataSet := DM.Q_liste_electeur_unique_region_Service;
  DM.frxReport1.ShowReport(True);
end;

procedure TRECHERCHE_DOSSIER_REGION.SpeedButton48Click(Sender: TObject);
begin
  if ComboBox2.Text <> '' then
  begin
    DM.Q_liste_region_CI.Filtered := false;
    DM.Q_liste_region_CI.Filter :=
      ('Region like ' + QuotedStr('%' + ComboBox2.Text + '%'));
    DM.Q_liste_region_CI.Filtered := True;
  end
  else
  begin
    DM.Q_liste_region_CI.Filtered := false;
  end;
  DM.frxDBDataset1.DataSet := DM.Q_liste_region_CI;
  DM.frxReport1.ShowReport(True);
end;

procedure TRECHERCHE_DOSSIER_REGION.SpeedButton49Click(Sender: TObject);
begin
  if ComboBox2.Text <> '' then
  begin
    DM.Q_liste_region_CS.Filtered := false;
    DM.Q_liste_region_CS.Filter :=
      ('Region like ' + QuotedStr('%' + ComboBox2.Text + '%'));
    DM.Q_liste_region_CS.Filtered := True;
  end
  else
  begin
    DM.Q_liste_region_CS.Filtered := false;
  end;
  DM.frxDBDataset1.DataSet := DM.Q_liste_region_CS;
  DM.frxReport1.ShowReport(True);
end;

procedure TRECHERCHE_DOSSIER_REGION.SpeedButton50Click(Sender: TObject);
begin
  if ComboBox2.Text <> '' then
  begin
    DM.Q_liste_region_IS.Filtered := false;
    DM.Q_liste_region_IS.Filter :=
      ('Region like ' + QuotedStr('%' + ComboBox2.Text + '%'));
    DM.Q_liste_region_IS.Filtered := True;
  end
  else
  begin
    DM.Q_liste_region_IS.Filtered := false;
  end;
  DM.frxDBDataset1.DataSet := DM.Q_liste_region_IS;
  DM.frxReport1.ShowReport(True);
end;

procedure TRECHERCHE_DOSSIER_REGION.SpeedButton51Click(Sender: TObject);
begin
  if ComboBox2.Text <> '' then
  begin
    DM.Q_liste_region_C_S_I.Filtered := false;
    DM.Q_liste_region_C_S_I.Filter :=
      ('Region like ' + QuotedStr('%' + ComboBox2.Text + '%'));
    DM.Q_liste_region_C_S_I.Filtered := True;
  end
  else
  begin
    DM.Q_liste_region_C_S_I.Filtered := false;
  end;
  DM.frxDBDataset1.DataSet := DM.Q_liste_region_C_S_I;
  DM.frxReport1.ShowReport(True);
end;

end.
