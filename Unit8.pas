unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.ExtCtrls;

type
  TForm8 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DataSource1: TDataSource;
    TabSheet2: TTabSheet;
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
    TabSheet3: TTabSheet;
    GridPanel7: TGridPanel;
    Label1: TLabel;
    Label2: TLabel;
    GridPanel1: TGridPanel;
    Label3: TLabel;
    Label4: TLabel;
    GridPanel2: TGridPanel;
    Label5: TLabel;
    Label6: TLabel;
    GridPanel3: TGridPanel;
    Label7: TLabel;
    Label8: TLabel;
    GridPanel4: TGridPanel;
    Label9: TLabel;
    Label10: TLabel;
    GridPanel5: TGridPanel;
    Label11: TLabel;
    Label12: TLabel;
    GridPanel8: TGridPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel_dossier: TPanel;
    Label13: TLabel;
    ComboBox1: TComboBox;
    Panel1: TPanel;
    Label14: TLabel;
    Edit1: TEdit;
    SpeedButton4: TSpeedButton;
    Panel2: TPanel;
    Label15: TLabel;
    Edit2: TEdit;
    SpeedButton5: TSpeedButton;
    Panel3: TPanel;
    Label16: TLabel;
    ComboBox2: TComboBox;
    procedure SearchBox2Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton43Click(Sender: TObject);
    procedure SpeedButton44Click(Sender: TObject);
    procedure SpeedButton45Click(Sender: TObject);
    procedure SpeedButton48Click(Sender: TObject);
    procedure SpeedButton49Click(Sender: TObject);
    procedure SpeedButton50Click(Sender: TObject);
    procedure SpeedButton51Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7;

procedure TForm8.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.Text <> '' then
  begin
    DM.Q_liste_generale.Filtered := false;
    DM.Q_liste_generale.Filter :=
      ('Representant1 like ' + QuotedStr('%' + ComboBox1.Text + '%'));
    DM.Q_liste_generale.Filtered := True;
  end
  else
  begin
    DM.Q_liste_generale.Filtered := false;
  end;
end;

procedure TForm8.Edit1Change(Sender: TObject);
begin
  if Edit1.Text <> '' then
  begin
    DM.Q_liste_generale.Filtered := false;
    DM.Q_liste_generale.Filter :=
      ('NomEtPrenomElecteur  like ' + QuotedStr('%' + Edit1.Text + '%'));
    DM.Q_liste_generale.Filtered := True;
  end
  else
  begin
    DM.Q_liste_generale.Filtered := false;
  end;
end;

procedure TForm8.Edit2Change(Sender: TObject);
begin
  if Edit2.Text <> '' then
  begin
    DM.Q_liste_generale.Filtered := false;
    DM.Q_liste_generale.Filter :=
      ('RaisonSocial like ' + QuotedStr('%' + Edit2.Text + '%'));
    DM.Q_liste_generale.Filtered := True;
  end
  else
  begin
    DM.Q_liste_generale.Filtered := false;
  end;
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form3.Show;
end;

procedure TForm8.SearchBox2Change(Sender: TObject);
begin
  { if SearchBox2.Text <> '' then
    begin
    DM.Q_liste_generale.Filtered := false;
    DM.Q_liste_generale.Filter :=
    ('Representant1 like ' + QuotedStr('%' + SearchBox2.Text + '%'));
    DM.Q_liste_generale.Filtered := True;
    end
    else
    begin
    DM.Q_liste_generale.Filtered := false;
    end; }

end;

procedure TForm8.SpeedButton1Click(Sender: TObject);
begin
  DM.Q_electeur_uniques_commerce.Close;
  DM.Q_electeur_uniques_commerce.Open;
  Label12.Caption := IntToStr(DM.Q_electeur_uniques_commerce.RecordCount);

  DM.Q_electeur_unique_industrie.Close;
  DM.Q_electeur_unique_industrie.Open;
  Label10.Caption := IntToStr(DM.Q_electeur_unique_industrie.RecordCount);

  DM.Q_electeur_unique_service.Close;
  DM.Q_electeur_unique_service.Open;
  Label8.Caption := IntToStr(DM.Q_electeur_unique_service.RecordCount);

  DM.Q_electeur_commerce_industrie.Close;
  DM.Q_electeur_commerce_industrie.Open;
  Label6.Caption := IntToStr(DM.Q_electeur_commerce_industrie.RecordCount);

  DM.Q_electeur_Commerce_service.Close;
  DM.Q_electeur_Commerce_service.Open;
  Label4.Caption := IntToStr(DM.Q_electeur_Commerce_service.RecordCount);

  DM.Q_electeur_Service_industrie.Close;
  DM.Q_electeur_Service_industrie.Open;
  Label2.Caption := IntToStr(DM.Q_electeur_Service_industrie.RecordCount);
end;

procedure TForm8.SpeedButton2Click(Sender: TObject);
begin
  DM.frxDBDataset5.DataSet := DM.Q_liste_generale;
  DM.frxreport3.ShowReport(True);
end;

procedure TForm8.SpeedButton43Click(Sender: TObject);
begin
  if ComboBox2.Text <> '' then
  begin
    DM.Q_electeur_uniques_commerce.Filtered := false;
    DM.Q_electeur_uniques_commerce.Filter :=
      ('Representant1 like ' + QuotedStr('%' + ComboBox2.Text + '%'));
    DM.Q_electeur_uniques_commerce.Filtered := True;
  end
  else
  begin
    DM.Q_electeur_uniques_commerce.Filtered := false;
  end;
  DM.frxDBDataset_electeur_unique.DataSet := DM.Q_electeur_uniques_commerce;
  DM.frxReport_electeurs_unique.ShowReport(True);
end;

procedure TForm8.SpeedButton44Click(Sender: TObject);
begin
  if ComboBox2.Text <> '' then
  begin
    DM.Q_electeur_unique_industrie.Filtered := false;
    DM.Q_electeur_unique_industrie.Filter :=
      ('Representant1 like ' + QuotedStr('%' + ComboBox2.Text + '%'));
    DM.Q_electeur_unique_industrie.Filtered := True;
  end
  else
  begin
    DM.Q_electeur_unique_industrie.Filtered := false;
  end;
  DM.frxDBDataset_electeur_unique.DataSet := DM.Q_electeur_unique_industrie;
  DM.frxReport_electeurs_unique.ShowReport(True);
end;

procedure TForm8.SpeedButton45Click(Sender: TObject);
begin
  if ComboBox2.Text <> '' then
  begin
    DM.Q_electeur_unique_service.Filtered := false;
    DM.Q_electeur_unique_service.Filter :=
      ('Representant1 like ' + QuotedStr('%' + ComboBox2.Text + '%'));
    DM.Q_electeur_unique_service.Filtered := True;
  end
  else
  begin
    DM.Q_electeur_unique_service.Filtered := false;
  end;
  DM.frxDBDataset_electeur_unique.DataSet := DM.Q_electeur_unique_service;
  DM.frxReport_electeurs_unique.ShowReport(True);
end;

procedure TForm8.SpeedButton48Click(Sender: TObject);
begin
  if ComboBox2.Text <> '' then
  begin
    DM.Q_electeur_commerce_industrie.Filtered := false;
    DM.Q_electeur_commerce_industrie.Filter :=
      ('Representant1 like ' + QuotedStr('%' + ComboBox2.Text + '%'));
    DM.Q_electeur_commerce_industrie.Filtered := True;
  end
  else
  begin
    DM.Q_electeur_commerce_industrie.Filtered := false;
  end;
  DM.frxDBDataset3.DataSet := DM.Q_electeur_commerce_industrie;
  DM.frxreport2.ShowReport(True);
end;

procedure TForm8.SpeedButton49Click(Sender: TObject);
begin
  if ComboBox2.Text <> '' then
  begin
    DM.Q_electeur_Commerce_service.Filtered := false;
    DM.Q_electeur_Commerce_service.Filter :=
      ('Representant1 like ' + QuotedStr('%' + Combobox2.Text + '%'));
    DM.Q_electeur_Commerce_service.Filtered := True;
  end
  else
  begin
    DM.Q_electeur_Commerce_service.Filtered := false;
  end;
  DM.frxDBDataset3.DataSet := DM.Q_electeur_Commerce_service;
  DM.frxreport2.ShowReport(True);
end;

procedure TForm8.SpeedButton50Click(Sender: TObject);
begin
  if ComboBox2.Text <> '' then
  begin
    DM.Q_electeur_Service_industrie.Filtered := false;
    DM.Q_electeur_Service_industrie.Filter :=
      ('Representant1 like ' + QuotedStr('%' + ComboBox2.Text + '%'));
    DM.Q_electeur_Service_industrie.Filtered := True;
  end
  else
  begin
    DM.Q_electeur_Service_industrie.Filtered := false;
  end;
  DM.frxDBDataset3.DataSet := DM.Q_electeur_Service_industrie;
  DM.frxreport2.ShowReport(True);
end;

procedure TForm8.SpeedButton51Click(Sender: TObject);
begin
  if ComboBox2.Text <> '' then
  begin
    DM.Q_electeur_C_I_S.Filtered := false;
    DM.Q_electeur_C_I_S.Filter :=
      ('Representant1 like ' + QuotedStr('%' + ComboBox2.Text + '%'));
    DM.Q_electeur_C_I_S.Filtered := True;
  end
  else
  begin
    DM.Q_electeur_C_I_S.Filtered := false;
  end;
  DM.frxDBDataset3.DataSet := DM.Q_electeur_C_I_S;
  DM.frxreport2.ShowReport(True);
end;

end.
