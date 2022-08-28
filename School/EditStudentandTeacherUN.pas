unit EditStudentandTeacherUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  StudentandTeacherUN, Data.DB, Data.Win.ADODB;

type
  TFMEditStudentteacher = class(TForm)
    Firstname_LBL: TLabel;
    Label1: TLabel;
    Panel2: TPanel;
    IDStudent_EDT: TEdit;
    IDClass_EDT: TEdit;
    Register_BTN: TButton;
    Editstuteach_QRY: TADOQuery;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure RunQuery;
  public
    { Public declarations }
    IDStudent :integer;
  end;

var
  FMEditStudentteacher: TFMEditStudentteacher;

implementation

{$R *.dfm}


procedure

{ TFMEditStudentteacher }

procedure TFMEditStudentteacher.FormShow(Sender: TObject);
begin
  RunQuery;
end;

procedure TFMEditStudentteacher.RunQuery;
begin
  With EditStuteach_QRY Do
  begin
    SQL.Clear;
    SQL.Add('Select * from StudentTeacher where IDStudent = '+IntToStr(IDStudent));
    Open;
    IDStudent_EDT.Text := FieldByName('IDStudent').AsString;
    IDClass_EDT.Text  := FieldByName('IDClass').AsString;
  end;
end;

end.
