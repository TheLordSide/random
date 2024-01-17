unit Unit16;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, AdvUtil, Vcl.Grids,
  AdvObj, BaseGrid, AdvGrid, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, W7Classes,
  W7Buttons, AeroButtons;

type
  TForm16 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GridPanel1: TGridPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    GridPanel2: TGridPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    GridPanel3: TGridPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    GridPanel4: TGridPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    GridPanel5: TGridPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Panel5: TPanel;
    Label21: TLabel;
    GridPanel6: TGridPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    W7SpeedButton2: TW7SpeedButton;
    W7SpeedButton3: TW7SpeedButton;
    W7SpeedButton4: TW7SpeedButton;
    W7SpeedButton5: TW7SpeedButton;
    W7SpeedButton1: TW7SpeedButton;
    GridPanel7: TGridPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    GridPanel8: TGridPanel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    GridPanel9: TGridPanel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    GridPanel10: TGridPanel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    GridPanel11: TGridPanel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Panel10: TPanel;
    Label46: TLabel;
    GridPanel12: TGridPanel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    W7SpeedButton6: TW7SpeedButton;
    W7SpeedButton7: TW7SpeedButton;
    W7SpeedButton8: TW7SpeedButton;
    W7SpeedButton9: TW7SpeedButton;
    W7SpeedButton10: TW7SpeedButton;
    GridPanel13: TGridPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    GridPanel14: TGridPanel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    GridPanel15: TGridPanel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    GridPanel16: TGridPanel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    GridPanel17: TGridPanel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    W7SpeedButton11: TW7SpeedButton;
    W7SpeedButton12: TW7SpeedButton;
    W7SpeedButton13: TW7SpeedButton;
    W7SpeedButton15: TW7SpeedButton;
    GridPanel19: TGridPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    GridPanel20: TGridPanel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    GridPanel21: TGridPanel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    GridPanel22: TGridPanel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    GridPanel23: TGridPanel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Panel20: TPanel;
    Label96: TLabel;
    GridPanel24: TGridPanel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    W7SpeedButton16: TW7SpeedButton;
    W7SpeedButton17: TW7SpeedButton;
    W7SpeedButton18: TW7SpeedButton;
    W7SpeedButton19: TW7SpeedButton;
    W7SpeedButton20: TW7SpeedButton;
    GridPanel25: TGridPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    GridPanel26: TGridPanel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    GridPanel27: TGridPanel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    GridPanel28: TGridPanel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    GridPanel29: TGridPanel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Panel25: TPanel;
    Label121: TLabel;
    GridPanel30: TGridPanel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    W7SpeedButton21: TW7SpeedButton;
    W7SpeedButton22: TW7SpeedButton;
    W7SpeedButton23: TW7SpeedButton;
    W7SpeedButton24: TW7SpeedButton;
    W7SpeedButton25: TW7SpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure W7SpeedButton1Click(Sender: TObject);
    procedure W7SpeedButton2Click(Sender: TObject);
    procedure W7SpeedButton3Click(Sender: TObject);
    procedure W7SpeedButton4Click(Sender: TObject);
    procedure W7SpeedButton5Click(Sender: TObject);
    procedure W7SpeedButton10Click(Sender: TObject);
    procedure W7SpeedButton6Click(Sender: TObject);
    procedure W7SpeedButton7Click(Sender: TObject);
    procedure W7SpeedButton8Click(Sender: TObject);
    procedure W7SpeedButton9Click(Sender: TObject);
    procedure W7SpeedButton20Click(Sender: TObject);
    procedure W7SpeedButton16Click(Sender: TObject);
    procedure W7SpeedButton17Click(Sender: TObject);
    procedure W7SpeedButton18Click(Sender: TObject);
    procedure W7SpeedButton19Click(Sender: TObject);
    procedure W7SpeedButton25Click(Sender: TObject);
    procedure W7SpeedButton21Click(Sender: TObject);
    procedure W7SpeedButton22Click(Sender: TObject);
    procedure W7SpeedButton23Click(Sender: TObject);
    procedure W7SpeedButton24Click(Sender: TObject);
    procedure W7SpeedButton15Click(Sender: TObject);
    procedure W7SpeedButton11Click(Sender: TObject);
    procedure W7SpeedButton12Click(Sender: TObject);
    procedure W7SpeedButton13Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

uses Unit1, Unit10, Unit11, Unit12, Unit13, Unit14, Unit15, Unit2, Unit3, Unit4,
  Unit5, Unit6, Unit7, Unit8, Unit9, Unit17;

procedure TForm16.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form3.Show;
end;

procedure TForm16.W7SpeedButton10Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ind A%'')'
    + ' and (list_secteur <>''Ind A'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton11Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ser D1G4%'')'
    + ' and (list_secteur <>''Ser D1G4'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton12Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ser D1G5%'')'
    + ' and (list_secteur <>''Ser D1G5'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton13Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ser D2%'')'
    + ' and (list_secteur <>''Ser D2'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton15Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ser D1G3%'')'
    + ' and (list_secteur <>''Ser D1G3'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton16Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ser B1%'')'
    + ' and (list_secteur <>''Ser B1'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton17Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ser B2%'')'
    + ' and (list_secteur <>''Ser B2'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton18Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ser B3%'')'
    + ' and (list_secteur <>''Ser B3'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton19Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ser B4%'')'
    + ' and (list_secteur <>''Ser B4'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton1Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Com A%'')'
    + ' and (list_secteur <>''Com A'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton20Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ser A%'')'
    + ' and (list_secteur <>''Ser A'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton21Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ser B6%'')'
    + ' and (list_secteur <>''Ser B6'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton22Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ser C%'')'
    + ' and (list_secteur <>''Ser C'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton23Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ser D1G1%'')'
    + ' and (list_secteur <>''Ser D1G1'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton24Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ser D1G2%'')'
    + ' and (list_secteur <>''Ser D1G2'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton25Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ser B5%'')'
    + ' and (list_secteur <>''Ser B5'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton2Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Com B%'')'
    + ' and (list_secteur <>''Com B'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton3Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Com C%'')'
    + ' and (list_secteur <>''Com C'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton4Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Com D%'')'
    + ' and (list_secteur <>''Com D'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton5Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Com XYZ%'')'
    + ' and (list_secteur <>''Com XYZ'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton6Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ind B%'')'
    + ' and (list_secteur <>''Ind B'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton7Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ind C%'')'
    + ' and (list_secteur <>''Ind C'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton8Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ind D%'')'
    + ' and (list_secteur <>''Ind D'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

procedure TForm16.W7SpeedButton9Click(Sender: TObject);
begin
  DM.UniQuery2.Close;
  DM.UniQuery2.SQL.Clear;
  DM.UniQuery2.SQL.Text :=
    'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '','') as list_secteur'
    + ' from importations,import_cat,import_jointure WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomElecteur'
    + ' AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtPrenomElecteur3 '
    + 'GROUP by importations.Raison_Social HAVING (list_secteur like''%Ind E%'')'
    + ' and (list_secteur <>''Ind E'')' +
    ' order by importations.NomEtPrenomElecteur ';
  DM.UniQuery2.Open;
  Form17.ShowModal;
end;

end.
