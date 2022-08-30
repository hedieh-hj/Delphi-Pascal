﻿unit CreateStudentUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.Win.ADODB, System.Actions, Vcl.ActnList, DMUN,
  EditStudentUN;

type
  TFmCreateStudent = class(TForm)
    Main_PNL: TPanel;
    Create_PNL: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    F_Name_EDT: TEdit;
    L_Name_EDT: TEdit;
    AGE_EDT: TEdit;
    Button1: TButton;
    Delete_BTN: TButton;
    Button3: TButton;
    AVG_EDT: TEdit;
    ID_EDT: TEdit;
    TEL_EDT: TEdit;
    Address_EDT: TEdit;
    NCode_EDT: TEdit;
    Button2: TButton;
    Header_PNL: TPanel;
    DBGrid1: TDBGrid;
    Student_QRY: TADOQuery;
    Student_DS: TDataSource;
    Student_QRYIDStudent: TWideStringField;
    Student_QRYFirstName: TWideStringField;
    Student_QRYLastName: TWideStringField;
    Student_QRYNationalCode: TWideStringField;
    Student_QRYAge: TIntegerField;
    Student_QRYTelephone: TWideStringField;
    Student_QRYAddress: TWideStringField;
    Student_QRYAvgScore: TWideStringField;
    ActionList1: TActionList;
    SaveAction: TAction;
    EditAction: TAction;
    DeleteAction: TAction;
    StudentTeacher_QRY: TADOQuery;
    Studentclass_QRY: TADOQuery;
    StudentTeacher_QRYIDStudent: TWideStringField;
    StudentTeacher_QRYIDTeacher: TWideStringField;
    Studentclass_QRYIDStudent: TWideStringField;
    Studentclass_QRYIDClass: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure SaveActionExecute(Sender: TObject);
    procedure EditActionExecute(Sender: TObject);
    procedure DeleteActionExecute(Sender: TObject);



  private
    { Private declarations }
    Procedure RunQuery;          //1 read data
    Procedure SaveFunction(FName,LName,AvgScore,Tel,Address,NCode : String;IDStudent,Age : Integer);   //2 save data

  public
    { Public declarations }
    checkid :integer;
    studentid:integer;
  end;

var
  FmCreateStudent: TFmCreateStudent;

implementation

{$R *.dfm}
{ TFmCreateStudent }

//SQL.Add(Format('delete from Students where IDStudent = %d AND IDTeacher = %S',[StudentID,stringt]));

/////////////////////////////////////////////////////////////////////////////////////////////////
//4 delete button

procedure TFmCreateStudent.DeleteActionExecute(Sender: TObject);
var I:integer;
begin
//id 2

//  With TADOQuery.Create(Nil) Do
//  Begin
//    Connection := DataModule1.ADOConnection1;
//    SQL.Clear;
//    SQL.Add('Select * from StudentTeacher');
//    SQL.Add('where IDStudent = '+ IntToStr(Student_QRYIDStudent.AsInteger));
//    open;
//    if not IsEmpty then
//    begin
//      ShowMessage('there is a relation with teacher for this student.');
//      Abort;
//    end;



   //check  teacher stu
 with TADOQuery.Create(nil) do
    begin
    Connection := DataModule1.ADOConnection1;
    sql.Clear;
    SQL.Add('select * from Students');
    Open;
    end;
    checkid := Student_QRY.FieldByName('IDStudent').AsInteger;
    with TADOQuery.Create(nil) do
    begin
      Connection := DataModule1.ADOConnection1;
      SQL.Text := 'select * from StudentTeacher where IDStudent= ' + IntToStr(checkid);
      Open;
       if not IsEmpty then
        begin
          ShowMessage('This student cannot be deleted because has relation with a teacher! you have to delete relation first.go to student and teacher form...');
          Abort;
        end;
    end;

    //////////////////////////////////////////////////////// check class stu

    with TADOQuery.Create(nil) do
    begin
    Connection := DataModule1.ADOConnection1;
    sql.Clear;
    SQL.Add('select * from Students');
    Open;
    end;
    checkid := Student_QRY.FieldByName('IDStudent').AsInteger;
    with TADOQuery.Create(nil) do
    begin
      Connection := DataModule1.ADOConnection1;
      SQL.Text := 'select * from StudentClass where IDStudent= ' + IntToStr(checkid);
      Open;
       if not IsEmpty then
        begin
          ShowMessage('This student cannot be deleted because has relation with a class! you have to delete relation first.go to student and class form...');
          Abort;
        end;
    end;

    //////no relation
 I := MessageDlg('Do you want to delete?',mtConfirmation,[mbYes,mbNo],0,mbNo);
   if I=6 then
   begin
     Runquery;
     studentid := Student_QRY.FieldByName('IDStudent').AsInteger;
     with TADOQuery.Create(nil) do
     begin
       Connection := DataModule1.ADOConnection1;
       SQL.Text := 'delete from Students where IDStudent=' + IntToStr(studentid);
       ExecSQL;
     end;
     Runquery;
   end;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////
//3 edit button go to form edit

procedure TFmCreateStudent.EditActionExecute(Sender: TObject);
begin
  FmEditStudent := TFmEditStudent.Create(Nil);
  FmEditStudent.StudentID := Student_QRYIDStudent.AsInteger;
  FMEditStudent.ShowModal;
  FreeAndNil(FMEditStudent);
  //runquery
end;

/////////////////////////////////////////////////////////////////////////////////////////////////
 //1 read data
procedure TFmCreateStudent.FormShow(Sender: TObject);
begin
  RunQuery;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////
 //1 read data
procedure TFmCreateStudent.RunQuery;
begin
    With Student_QRY Do
    begin
      SQL.Clear;
      SQL.Add('Select * from Students');
      Open;
    end;
end;

 /////////////////////////////////////////////////////////////////////////////////////////////////
//2 call func here in button
procedure TFmCreateStudent.SaveActionExecute(Sender: TObject);
begin
  SaveFunction(F_Name_EDT.Text,L_Name_EDT.Text,AVG_EDT.Text,
               TEL_EDT.Text,Address_EDT.Text,NCode_EDT.Text,
               StrToint(ID_EDT.Text),StrToint(AGE_EDT.Text));
end;

/////////////////////////////////////////////////////////////////////////////////////////////////
 //2 func  save
procedure TFmCreateStudent.SaveFunction(FName, LName, AvgScore, Tel, Address,
  NCode: String; IDStudent, Age: Integer);
begin
  with TADOQuery.Create(Nil) DO
  begin
    Connection := DataModule1.ADOConnection1;
    SQL.Clear;
    SQL.Add('Select * from Students');
    SQL.Add('where IDStudent = '+IntToStr(IDStudent));
    Open;
    if Not (IsEmpty) then
    begin
      ShowMessage('This ID exist. you can not use it again!');
      Abort;
    end;
  end;

  With Student_QRY Do
  begin
    Insert;
    FieldByName('IDStudent').AsInteger := IDStudent;
    FieldByName('FirstName').AsString := FName;
    FieldByName('LastName').AsString := LName;
    FieldByName('AvgScore').AsString := AvgScore;
    FieldByName('Telephone').AsString := Tel;
    FieldByName('Address').AsString := Address;
    FieldByName('NationalCode').AsString := NCode;
    FieldByName('Age').AsInteger := Age;
    Post;
  end;
end;





end.
