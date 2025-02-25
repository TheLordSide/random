unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm13 = class(TForm)
    GridPanel32: TGridPanel;
    Label32: TLabel;
    ComboBox5: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    SpeedButton47: TSpeedButton;
    procedure SpeedButton47Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

uses Unit1, Unit10, Unit11, Unit12, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7,
  Unit8, Unit9;

procedure TForm13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form3.Show;
end;

procedure TForm13.SpeedButton47Click(Sender: TObject);
begin
  if ComboBox5.Text = 'Liste des dossiers avec des manquants' then
  begin
    DM.Q_piece_manquante_liste.Filtered := False;
    DM.Q_piece_manquante_liste.Filter :=
      ('Representant1 like ' + QuotedStr('%' + Edit1.Text + '%'));
    DM.Q_piece_manquante_liste.Filtered:=True;
    DM.frxReport5.ShowReport(true);
  end;
  if ComboBox5.Text = 'Dossiers Complets' then
  begin
    DM.Q_dossier_complet.Filtered := False;
    DM.Q_dossier_complet.Filter :=
      ('Representant1 like ' + QuotedStr('%' + Edit1.Text + '%'));
    DM.Q_dossier_complet.Filtered := true;
    DM.frxDBDataset5.DataSet := DM.Q_dossier_complet;
    DM.frxreport3.ShowReport(true);
  end;
  if ComboBox5.Text = 'Dossier avec photo manquant' then
  begin
    DM.Q_dossier_Photo_manquante.Filtered := False;
    DM.Q_dossier_Photo_manquante.Filter :=
      ('Representant1 like ' + QuotedStr('%' + Edit1.Text + '%'));
    DM.Q_dossier_Photo_manquante.Filtered := true;
    DM.frxDBDataset5.DataSet := DM.Q_dossier_Photo_manquante;
    DM.frxreport3.ShowReport(true);
  end;
  if ComboBox5.Text = 'Dossier avec Carte CCIT manquante' then
  begin
    DM.Q_dossier_Carte_CCIT_manquante.Filtered := False;
    DM.Q_dossier_Carte_CCIT_manquante.Filter :=
      ('Representant1 like ' + QuotedStr('%' + Edit1.Text + '%'));
    DM.Q_dossier_Carte_CCIT_manquante.Filtered := true;
    DM.frxDBDataset5.DataSet := DM.Q_dossier_Carte_CCIT_manquante;
    DM.frxreport3.ShowReport(true);
  end;

  if ComboBox5.Text = 'Dossier avec PI manquantes' then
  begin
    DM.Q_dossier_PI_manquants.Filtered := False;
    DM.Q_dossier_PI_manquants.Filter :=
      ('Representant1 like ' + QuotedStr('%' + Edit1.Text + '%'));
    DM.Q_dossier_PI_manquants.Filtered := true;
    DM.frxDBDataset5.DataSet := DM.Q_dossier_PI_manquants;
    DM.frxreport3.ShowReport(true);
  end;

  if ComboBox5.Text = 'Dossier avec Carte CFE manquante' then
  begin
    DM.Q_dossier_carte_cfe_Manquante.Filtered := False;
    DM.Q_dossier_carte_cfe_Manquante.Filter :=
      ('Representant1 like ' + QuotedStr('%' + Edit1.Text + '%'));
    DM.Q_dossier_carte_cfe_Manquante.Filtered := true;
    DM.frxDBDataset5.DataSet := DM.Q_dossier_carte_cfe_Manquante;
    DM.frxreport3.ShowReport(true);
  end;

  if ComboBox5.Text = 'Dossier avec Quitus Fiscale manquant' then
  begin
    DM.Q_dossier_quitus_fiscale_manquante.Filtered := False;
    DM.Q_dossier_quitus_fiscale_manquante.Filter :=
      ('Representant1 like ' + QuotedStr('%' + Edit1.Text + '%'));
    DM.Q_dossier_quitus_fiscale_manquante.Filtered := true;
    DM.frxDBDataset5.DataSet := DM.Q_dossier_quitus_fiscale_manquante;
    DM.frxreport3.ShowReport(true);
  end;

  if ComboBox5.Text = 'Dossier avec Quitus CCIT manquant' then
  begin
    DM.Q_dossier_Quitus_CCIT_Manquante.Filtered := False;
    DM.Q_dossier_Quitus_CCIT_Manquante.Filter :=
      ('Representant1 like ' + QuotedStr('%' + Edit1.Text + '%'));
    DM.Q_dossier_Quitus_CCIT_Manquante.Filtered := true;
    DM.frxDBDataset5.DataSet := DM.Q_dossier_Quitus_CCIT_Manquante;
    DM.frxreport3.ShowReport(true);
  end;
end;

end.
