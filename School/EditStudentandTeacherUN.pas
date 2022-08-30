unit EditStudentandTeacherUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
   Data.DB, Data.Win.ADODB;

type
  TFMEditStudentteacher = class(TForm)
    Firstname_LBL: TLabel;
    Label1: TLabel;
    Panel2: TPanel;
    IDStudent_EDT: TEdit;
    IDTeacher_EDT: TEdit;
    Register_BTN: TButton;
    Editstuteach_QRY: TADOQuery;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure RunQuery;
  public
    { Public declarations }
    IDStu :integer;
    IDTeach : Integer;
  end;

var
  FMEditStudentteacher: TFMEditStudentteacher;

implementation

{$R *.dfm}




{ TFMEditStudentteacher }

procedure TFMEditStudentteacher.FormShow(Sender: TObject);
begin
  RunQuery;
end;
/////////////////////////////////////////////////////////////////////////////////////////////////
procedure TFMEditStudentteacher.RunQuery;
begin
  With EditStuteach_QRY Do
  begin
    SQL.Clear;
    SQL.Add('Select * from StudentTeacher where IDStudent = '+IntToStr(IDStu) + 'and IDTeacher=' + IntToStr(IDTeach));
    Open;
    IDStudent_EDT.Text := FieldByName('IDStudent').AsString;
    IDTeacher_EDT.Text  := FieldByName('IDTeacher').AsString;
  end;
end;

end.
