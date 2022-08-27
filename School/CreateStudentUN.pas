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
    procedure FormShow(Sender: TObject);
    procedure SaveActionExecute(Sender: TObject);
    procedure EditActionExecute(Sender: TObject);
    procedure DeleteActionExecute(Sender: TObject);

  private
    { Private declarations }
    Procedure RunQuery;
    Procedure SaveFunction(FName,LName,AvgScore,Tel,Address,NCode : String;IDStudent,Age : Integer);
  public
    { Public declarations }
  end;

var
  FmCreateStudent: TFmCreateStudent;

implementation

{$R *.dfm}
{ TFmCreateStudent }


/////////////////////////////////////////////////////////////////////////////////////////////////



procedure TFmCreateStudent.DeleteActionExecute(Sender: TObject);
begin
  With TADOQuery.Create(Nil) Do
  Begin
    Connection := DataModule1.ADOConnection1;
    SQL.Clear;
    SQL.Add('Delete From Students Where IdStudent = '+ IntToStr(Student_QRYIDStudent.AsInteger));
    ExecSQL;
  End;
  RunQuery;
end;
/////////////////////////////////////////////////////////////////////////////////////////////////

procedure TFmCreateStudent.EditActionExecute(Sender: TObject);
begin
  FmEditStudent := TFmEditStudent.Create(Nil);
  FmEditStudent.StudentID := Student_QRYIDStudent.AsInteger;
  FMEditStudent.ShowModal;
  FreeAndNil(FMEditStudent);
  //runquery
end;

/////////////////////////////////////////////////////////////////////////////////////////////////

procedure TFmCreateStudent.FormShow(Sender: TObject);
begin
  RunQuery;
end;

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

procedure TFmCreateStudent.SaveActionExecute(Sender: TObject);
begin
  SaveFunction(F_Name_EDT.Text,L_Name_EDT.Text,AVG_EDT.Text,
               TEL_EDT.Text,Address_EDT.Text,NCode_EDT.Text,
               StrToint(ID_EDT.Text),StrToint(AGE_EDT.Text));
end;

/////////////////////////////////////////////////////////////////////////////////////////////////

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
      ShowMessage('This ID exist. you cn npot use it again!');
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