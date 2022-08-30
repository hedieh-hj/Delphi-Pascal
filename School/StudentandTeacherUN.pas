unit StudentandTeacherUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Data.Win.ADODB,
  EditStudentandTeacherUN, DMUN;

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
    StuandTeach_QRY: TADOQuery;
    ActionList1: TActionList;
    StuandTeach_DS: TDataSource;
    StuandTeach_QRYIDStudent: TWideStringField;
    StuandTeach_QRYIDTeacher: TWideStringField;
    SaveAction: TAction;
    EditAction: TAction;
    DeleteAction: TAction;
    procedure FormShow(Sender: TObject);
    procedure SaveActionExecute(Sender: TObject);
    procedure EditActionExecute(Sender: TObject);
    procedure DeleteActionExecute(Sender: TObject);
  private
    { Private declarations }
    Procedure SaveFunction(IDStu , IDTeach : Integer);
    Procedure RunQuery;
  public
    { Public declarations }
  end;

var
  FmStudentandTeacher: TFmStudentandTeacher;

implementation

{$R *.dfm}

{ TFmStudentandTeacher }

procedure TFmStudentandTeacher.DeleteActionExecute(Sender: TObject);
var I : Integer;
begin
  I := MessageDlg('Do you want to delete this row?',mtConfirmation,[mbYes,mbNo],0,mbNo);
  if I=6 then
    With TADOQuery.Create(Nil) Do
    Begin
      Connection := DataModule1.ADOConnection1;
      SQL.Clear;
      //SQL.Add('Delete From Studentteacher Where IdStudent = '+ IntToStr(StuandTeach_QRYIDStudent.AsInteger));
      SQL.Add(Format('delete from Studentteacher where IDStudent = %d ',[StuandTeach_QRYIDStudent.AsInteger]));
      ExecSQL;
    end;
    RunQuery;
end;


/////////////////////////////////////////////////////////////////////////////////////////////////

procedure TFmStudentandTeacher.EditActionExecute(Sender: TObject);
begin
  FMEditStudentteacher :=   TFMEditStudentteacher.create(nil);
  FMEditStudentteacher.IDStu := StuandTeach_QRYIDStudent.AsInteger;
  FMEditStudentteacher.IDTeach := StuandTeach_QRYIDTeacher.AsInteger;
  FMEditStudentteacher.ShowModal;
  FreeAndNil(FMEditStudentteacher);
end;
/////////////////////////////////////////////////////////////////////////////////////////////////
procedure TFmStudentandTeacher.FormShow(Sender: TObject);
begin
  RunQuery;
end;
/////////////////////////////////////////////////////////////////////////////////////////////////
procedure TFmStudentandTeacher.RunQuery;
begin
   with StuandTeach_QRY Do
   begin
     SQL.Clear;
     SQL.Add('select * from StudentTeacher');
     Open;
   end;
end;
/////////////////////////////////////////////////////////////////////////////////////////////////
procedure TFmStudentandTeacher.SaveActionExecute(Sender: TObject);
begin
    SaveFunction(Strtoint(Edit1.Text),Strtoint(Edit2.Text));
end;
/////////////////////////////////////////////////////////////////////////////////////////////////
procedure TFmStudentandTeacher.SaveFunction(IDStu, IDTeach: Integer);
begin
  with StuandTeach_QRY Do
  begin
    insert;
    FieldByName('IDStudent').AsInteger := IDStu;
    Fieldbyname('IDTeacher').AsInteger := IDTeach;
  end;
end;

end.
