unit EditStudentandTeacherUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
   Data.DB, Data.Win.ADODB, System.Actions, Vcl.ActnList, DMUN, Common;

type
  TFMEditStudentteacher = class(TForm)
    Firstname_LBL: TLabel;
    Label1: TLabel;
    Panel2: TPanel;
    IDStudent_EDT: TEdit;
    IDTeacher_EDT: TEdit;
    Register_BTN: TButton;
    Editstuteach_QRY: TADOQuery;
    ActionList1: TActionList;
    SaveAction: TAction;
    procedure FormShow(Sender: TObject);
    procedure SaveActionExecute(Sender: TObject);
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

/////////////////////////////////////////////////////////////////////////////////////////////////

procedure TFMEditStudentteacher.SaveActionExecute(Sender: TObject);
begin
  with Editstuteach_QRY Do
  begin
    SQL.Add(format('select * from studentteacher where IDStudent=%s and IDTeacher=%s',[inttostr(IDStu),
            inttostr(IDTeach)]));
    Open;
    Edit;
    //check null id
    if ((IDStudent_EDT.Text= '') or (IDTeacher_EDT.Text='')) then
      begin
        ShowMessage('This ID field can not be empty.you have to insert an unique ID!');
        abort;
      end;


//     //check student id is not exist
//     with TADOQuery.Create(nil) do
//     begin
//        Connection := DataModule1.ADOConnection1;
//        SQL.Add(format('select * from students where IDStudent = %s ',[IDStudent_EDT.Text]));
//        Open;
//        if IsEmpty then
//        begin
//          ShowMessage('This ID for student does not exist!') ;
//          Abort;
//        end;
//     end;


    //check student id is not exist
    if IsValid('students','IDStudent','null',strtoint(IDStudent_EDT.Text),strtoint(IDStudent_EDT.Text),tvdtIDNotExist) then //==true
    begin
      ShowMessage('This ID for student does not exist!');
      Abort;
    end;

    //check teacher id is not exist
    if IsValid('teachers','IDteacher','null',strtoint(IDteacher_EDT.Text),strtoint(IDteacher_EDT.Text),tvdtIDNotExist) then //==true
    begin
      ShowMessage('This ID for teacher does not exist!');
      Abort;
    end;

    //check repeat row select * from StudentTeacher where idstudent=4 and IDTeacher=3
    if IsValid('studentteacher','IDstudent','IDTeacher',strtoint(IDstudent_EDT.Text),strtoint(IDteacher_EDT.Text),tvdtIDNotExistID) then //==true
    begin
      ShowMessage('This row exist! change IDs.');
      Abort;
    end;

    //everything is ok
    FieldByName('IDStudent').AsString :=IDStudent_EDT.Text;
    FieldByName('IDTeacher').AsString := IDTeacher_EDT.Text;
    Post;
    SQL.Clear;
    close;
    ShowMessage('It is Done!');

  end;
end;

end.
