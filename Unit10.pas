unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.WinXCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus;

type
  TForm10 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox26: TGroupBox;
    GridPanel35: TGridPanel;
    SearchBox4: TSearchBox;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    GridPanel1: TGridPanel;
    SearchBox1: TSearchBox;
    PopupMenu1: TPopupMenu;
    DBNavigator1: TDBNavigator;
    Supprimer1: TMenuItem;
    DBGrid1: TDBGrid;
    DBGrid7: TDBGrid;
    DataSource2: TDataSource;
    PopupMenu2: TPopupMenu;
    Completerledossieravec1: TMenuItem;
    Photo1: TMenuItem;
    Cartedidentite1: TMenuItem;
    QuitusFiscale1: TMenuItem;
    CarteCFE1: TMenuItem;
    CarteCCIT1: TMenuItem;
    QuitusCCIT1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Supprimer1Click(Sender: TObject);
    procedure SearchBox4Change(Sender: TObject);
    procedure Photo1Click(Sender: TObject);
    procedure Cartedidentite1Click(Sender: TObject);
    procedure CarteCFE1Click(Sender: TObject);
    procedure CarteCCIT1Click(Sender: TObject);
    procedure QuitusCCIT1Click(Sender: TObject);
    procedure QuitusFiscale1Click(Sender: TObject);
    procedure SearchBox1Change(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form10: TForm10;

var
  liste: TBookmarklist;
  bookmark: TBookmark;
  i: integer;
  cont: string;

implementation

{$R *.dfm}

uses Unit1, Unit11, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

procedure TForm10.CarteCCIT1Click(Sender: TObject);
begin
  DM.Q_piece.Locate('NomEtPrenomElecteur', 'Nompiece', []);
  cont := DM.Q_piece.FieldByName('NomEtPrenomElecteur').AsString;
  DM.Q_piece.Active := True;
  DM.Q_piece.Append;
  DM.Q_piece.FieldByName('NomEtPrenomElecteur').AsString := cont;
  DM.Q_piece.FieldByName('Nompiece').AsString := 'Carte CCIT';
  DM.Q_piece.Post;
  ShowMessage('Succes');
  DM.Q_piece.Close;
  DM.Q_piece.Open;
end;

procedure TForm10.CarteCFE1Click(Sender: TObject);
begin
  DM.Q_piece.Locate('NomEtPrenomElecteur', 'Nompiece', []);
  cont := DM.Q_piece.FieldByName('NomEtPrenomElecteur').AsString;
  DM.Q_piece.Active := True;
  DM.Q_piece.Append;
  DM.Q_piece.FieldByName('NomEtPrenomElecteur').AsString := cont;
  DM.Q_piece.FieldByName('Nompiece').AsString := 'Carte CFE';
  DM.Q_piece.Post;
  ShowMessage('Succes');
  DM.Q_piece.Close;
  DM.Q_piece.Open;
end;

procedure TForm10.Cartedidentite1Click(Sender: TObject);
begin
  DM.Q_piece.Locate('NomEtPrenomElecteur', 'Nompiece', []);
  cont := DM.Q_piece.FieldByName('NomEtPrenomElecteur').AsString;
  DM.Q_piece.Active := True;
  DM.Q_piece.Append;
  DM.Q_piece.FieldByName('NomEtPrenomElecteur').AsString := cont;
  DM.Q_piece.FieldByName('Nompiece').AsString := 'Piece Identite';
  DM.Q_piece.Post;
  ShowMessage('Succes');
  DM.Q_piece.Close;
  DM.Q_piece.Open;
end;

procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form3.Show
end;

procedure TForm10.Photo1Click(Sender: TObject);
var
  liste: TBookmarklist;
  bookmark: TBookmark;
  i: integer;

begin
  DM.Q_piece.Locate('NomEtPrenomElecteur', 'Nompiece', []);
  cont := DM.Q_piece.FieldByName('NomEtPrenomElecteur').AsString;
  DM.Q_piece.Active := True;
  DM.Q_piece.Append;
  DM.Q_piece.FieldByName('NomEtPrenomElecteur').AsString := cont;
  DM.Q_piece.FieldByName('Nompiece').AsString := 'Photo';
  DM.Q_piece.Post;
  ShowMessage('Succes');
  DM.Q_piece.Close;
  DM.Q_piece.Open
end;

procedure TForm10.QuitusCCIT1Click(Sender: TObject);
begin
  DM.Q_piece.Locate('NomEtPrenomElecteur', 'Nompiece', []);
  cont := DM.Q_piece.FieldByName('NomEtPrenomElecteur').AsString;
  DM.Q_piece.Active := True;
  DM.Q_piece.Append;
  DM.Q_piece.FieldByName('NomEtPrenomElecteur').AsString := cont;
  DM.Q_piece.FieldByName('Nompiece').AsString := 'Quittus CCIT';
  DM.Q_piece.Post;
  ShowMessage('Succes');
  DM.Q_piece.Close;
  DM.Q_piece.Open;
end;

procedure TForm10.QuitusFiscale1Click(Sender: TObject);
begin
  DM.Q_piece.Locate('NomEtPrenomElecteur', 'Nompiece', []);
  cont := DM.Q_piece.FieldByName('NomEtPrenomElecteur').AsString;
  DM.Q_piece.Active := True;
  DM.Q_piece.Append;
  DM.Q_piece.FieldByName('NomEtPrenomElecteur').AsString := cont;
  DM.Q_piece.FieldByName('Nompiece').AsString := 'Quitus Fiscale';
  DM.Q_piece.Post;
  ShowMessage('Succes');
  DM.Q_piece.Close;
  DM.Q_piece.Open;

end;

procedure TForm10.SearchBox1Change(Sender: TObject);
begin
  if SearchBox1.Text <> '' then
  begin
    DM.Q_piece.Filtered := false;
    DM.Q_piece.Filter := ('NomEtPrenomElecteur like ' +
      QuotedStr('%' + SearchBox1.Text + '%'));
    DM.Q_piece.Filtered := True;
  end
  else
  begin
    DM.Q_piece.Filtered := false;
  end;
end;

procedure TForm10.SearchBox4Change(Sender: TObject);
begin
  if SearchBox4.Text <> '' then
  begin
    DM.Q_electeur.Filtered := false;
    DM.Q_electeur.Filter :=
      ('RaisonSocial like ' + QuotedStr('%' + SearchBox4.Text + '%')) + ' or '
      + ('NomEtPrenomElecteur like ' + QuotedStr('%' + SearchBox4.Text + '%'));
    DM.Q_electeur.Filtered := True;
  end
  else
  begin
    DM.Q_electeur.Filtered := false;
  end;
end;

procedure TForm10.Supprimer1Click(Sender: TObject);
var
  liste: TBookmarklist;
  bookmark: TBookmark;
  i: integer;

begin
  liste := DBGrid1.SelectedRows;
  for i := 0 to liste.Count - 1 do
  begin
    DM.Q_electeur.GotoBookmark(liste[i]);
    DM.Q_electeur.Delete;
  end;
  DBGrid1.SelectedRows.Clear;
end;

end.
