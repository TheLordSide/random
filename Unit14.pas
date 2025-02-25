unit Unit14;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm14 = class(TForm)
    GridPanel1: TGridPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox5: TComboBox;
    Label3: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton47Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}

uses Unit1, Unit10, Unit11, Unit12, Unit13, Unit2, Unit3, Unit4, Unit5, Unit6,
  Unit7, Unit8, Unit9;

procedure TForm14.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form3.Show;
end;

procedure TForm14.SpeedButton47Click(Sender: TObject);
begin
  if ComboBox5.Text = 'Dossier avec pieces manquantes' then
  begin
    if ComboBox1.Text <> '' then
    begin
      DM.Q_piece_manquante_liste_R.Filtered := false;
      DM.Q_piece_manquante_liste_R.Filter :=
        ('Region like ' + QuotedStr('%' + ComboBox1.Text + '%')) + ' and ' +
        ('Representant1 like ' + QuotedStr('%' + Edit1.Text + '%'));
      DM.Q_piece_manquante_liste_R.Filtered := True;
    end
    else
    begin
      DM.Q_piece_manquante_liste_R.Filtered := false;
    end;

    DM.frxReport6.ShowReport(True);
  end;

  if ComboBox5.Text = 'Dossiers Complets Region' then
  begin
    if ComboBox1.Text <> '' then
    begin
      DM.Q_dossier_Complet_R.Filtered := false;
      DM.Q_dossier_Complet_R.Filter :=
        ('Region like ' + QuotedStr('%' + ComboBox1.Text + '%')) + ' and ' +
        ('Representant1 like ' + QuotedStr('%' + Edit1.Text + '%'));
      DM.Q_dossier_Complet_R.Filtered := True;
    end
    else
    begin
      DM.Q_dossier_Complet_R.Filtered := false;
    end;
    DM.frxDBDataset1.DataSet := DM.Q_dossier_Complet_R;
    DM.frxReport1.ShowReport(True);
  end;
  if ComboBox5.Text = 'Dossier avec photo manquant Region' then
  begin
    if ComboBox1.Text <> '' then
    begin
      DM.Q_dossier_Photo_manquante_R.Filtered := false;
      DM.Q_dossier_Photo_manquante_R.Filter :=
        ('Region like ' + QuotedStr('%' + ComboBox1.Text + '%')) + ' and ' +
        ('Representant1 like ' + QuotedStr('%' + Edit1.Text + '%'));
      DM.Q_dossier_Photo_manquante_R.Filtered := True;
    end
    else
    begin
      DM.Q_dossier_Photo_manquante_R.Filtered := false;
    end;
    DM.frxDBDataset1.DataSet := DM.Q_dossier_Photo_manquante_R;
    DM.frxReport1.ShowReport(True);
  end;
  if ComboBox5.Text = 'Dossier avec Carte CCIT manquante Region' then
  begin
    if ComboBox1.Text <> '' then
    begin
      DM.Q_dossier_Quitus_CCIT_manquante_R.Filtered := false;
      DM.Q_dossier_Quitus_CCIT_manquante_R.Filter :=
        ('Region like ' + QuotedStr('%' + ComboBox1.Text + '%')) + ' and ' +
        ('Representant1 like ' + QuotedStr('%' + Edit1.Text + '%'));
      DM.Q_dossier_Quitus_CCIT_manquante_R.Filtered := True;
    end
    else
    begin
      DM.Q_dossier_Quitus_CCIT_manquante_R.Filtered := false;
    end;
    DM.frxDBDataset1.DataSet := DM.Q_dossier_Quitus_CCIT_manquante_R;
    DM.frxReport1.ShowReport(True);
  end;

  if ComboBox5.Text = 'Dossier avec PI manquantes Region' then
  begin
    if ComboBox1.Text <> '' then
    begin
      DM.Q_dossier_PI_manquant_R.Filtered := false;
      DM.Q_dossier_PI_manquant_R.Filter :=
        ('Region like ' + QuotedStr('%' + ComboBox1.Text + '%')) + ' and ' +
        ('Representant1 like ' + QuotedStr('%' + Edit1.Text + '%'));
      DM.Q_dossier_PI_manquant_R.Filtered := True;
    end
    else
    begin
      DM.Q_dossier_PI_manquant_R.Filtered := false;
    end;
    DM.frxDBDataset1.DataSet := DM.Q_dossier_PI_manquant_R;
    DM.frxReport1.ShowReport(True);
  end;

  if ComboBox5.Text = 'Dossier avec Carte CFE manquante Region' then
  begin
    if ComboBox1.Text <> '' then
    begin
      DM.Q_dossier_carte_CFE_manquante_R.Filtered := false;
      DM.Q_dossier_carte_CFE_manquante_R.Filter :=
        ('Region like ' + QuotedStr('%' + ComboBox1.Text + '%')) + ' and ' +
        ('Representant1 like ' + QuotedStr('%' + Edit1.Text + '%'));
      DM.Q_dossier_carte_CFE_manquante_R.Filtered := True;
    end
    else
    begin
      DM.Q_dossier_carte_CFE_manquante_R.Filtered := false;
    end;
    DM.frxDBDataset1.DataSet := DM.Q_dossier_carte_CFE_manquante_R;
    DM.frxReport1.ShowReport(True);
  end;

  if ComboBox5.Text = 'Dossier avec Quitus Fiscale manquant Region' then
  begin
    if ComboBox1.Text <> '' then
    begin
      DM.Q_dossier_quitus_fiscale_manquante_R.Filtered := false;
      DM.Q_dossier_quitus_fiscale_manquante_R.Filter :=
        ('Region like ' + QuotedStr('%' + ComboBox1.Text + '%')) + ' and ' +
        ('Representant1 like ' + QuotedStr('%' + Edit1.Text + '%'));
      DM.Q_dossier_quitus_fiscale_manquante_R.Filtered := True;
    end
    else
    begin
      DM.Q_dossier_quitus_fiscale_manquante_R.Filtered := false;
    end;
    DM.frxDBDataset1.DataSet := DM.Q_dossier_quitus_fiscale_manquante_R;
    DM.frxReport1.ShowReport(True);
  end;

  if ComboBox5.Text = 'Dossier avec Quitus CCIT manquant Region' then
  begin
    if ComboBox1.Text <> '' then
    begin
      DM.Q_dossier_Quitus_CCIT_manquante_R.Filtered := false;
      DM.Q_dossier_Quitus_CCIT_manquante_R.Filter :=
        ('Region like ' + QuotedStr('%' + ComboBox1.Text + '%')) + ' and ' +
        ('Representant1 like ' + QuotedStr('%' + Edit1.Text + '%'));
      DM.Q_dossier_Quitus_CCIT_manquante_R.Filtered := True;
    end
    else
    begin
      DM.Q_dossier_Quitus_CCIT_manquante_R.Filtered := false;
    end;
    DM.frxDBDataset1.DataSet := DM.Q_dossier_Quitus_CCIT_manquante_R;
    DM.frxReport1.ShowReport(True);
  end;
end;

end.
