unit Unit15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, AdvUtil,
  Data.DB, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, Vcl.StdCtrls,
  Vcl.CheckLst, Vcl.Buttons, Vcl.ComCtrls;

type
  TForm15 = class(TForm)
    Panel1: TPanel;
    DataSource1: TDataSource;
    CheckListBox1: TCheckListBox;
    ListBox1: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    ListView1: TListView;
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

end.
