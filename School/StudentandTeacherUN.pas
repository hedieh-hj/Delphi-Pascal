unit StudentandTeacherUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFmStudentandTeacher = class(TForm)
    Main_PNL: TPanel;
    Create_PNL: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Delete_BTN: TButton;
    Button3: TButton;
    Header_PNL: TPanel;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmStudentandTeacher: TFmStudentandTeacher;

implementation

{$R *.dfm}

end.
