unit CreateTeacherUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.WinXPickers, Vcl.ComCtrls, Vcl.ExtCtrls, DMUN,
  System.Actions, Vcl.ActnList, Data.Win.ADODB, EditTeacherUN;

type
  TFmCreateTeacher = class(TForm)
    Main_PNL: TPanel;
    Create_PNL: TPanel;
    FName_EDT: TEdit;
    LName_EDT: TEdit;
    Age_EDT: TEdit;
    Button1: TButton;
    Delete_BTN: TButton;
    Header_PNL: TPanel;
    DBGrid1: TDBGrid;
    Educate_EDT: TEdit;
    Code_EDT: TEdit;
    Tel_EDT: TEdit;
    Address_EDT: TEdit;
    NCode_EDT: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button2: TButton;
    Teacher_QRY: TADOQuery;
    Teacher_DS: TDataSource;
    ActionList1: TActionList;
    Teacher_QRYIDTeacher: TWideStringField;
    Teacher_QRYFirstName: TWideStringField;
    Teacher_QRYLastName: TWideStringField;
    Teacher_QRYNationalCode: TWideStringField;
    Teacher_QRYAge: TIntegerField;
    Teacher_QRYTelephone: TWideStringField;
    Teacher_QRYAddress: TWideStringField;
    Teacher_QRYEducate: TWideStringField;
    SaveAction: TAction;
    EditAction: TAction;
    procedure FormShow(Sender: TObject);
    procedure SaveActionExecute(Sender: TObject);

    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
    procedure RunQuery;
    Procedure  SaveFunction(FName,LName,Tel,Address,NCode,Educate : String;IDTeacher,Age : Integer);
  public
    { Public declarations }
  end;

var
  FmCreateTeacher: TFmCreateTeacher;

implementation

{$R *.dfm}




procedure TFmCreateTeacher.Button3Click(Sender: TObject);
begin
  FMEditTeacher := TFMEditTeacher.Create(Nil);
  FMEditTeacher.IDTeacher := Teacher_QRYIDTeacher.AsInteger;
  FMEditTeacher.ShowModal;
  FreeAndNil(FMEditTeacher);
  //runquery
end;


/////////////////////////////////////////////////////////////////////////////////////////////////


procedure TFmCreateTeacher.FormShow(Sender: TObject);
begin
  RunQuery;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////

Procedure TFmCreateTeacher.RunQuery;
begin

  With Teacher_QRY Do
    begin
      SQL.Clear;
      SQL.Add('Select * from Teachers');
      Open;
    end;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////

procedure TFmCreateTeacher.SaveActionExecute(Sender: TObject);
begin
      SaveFunction(FName_EDT.Text,LName_EDT.Text,
                   Tel_EDT.Text,Address_EDT.Text,NCode_EDT.Text,
                   Educate_EDT.Text,strtoint(Code_EDT.Text),Strtoint(Age_EDT.Text));
end;

/////////////////////////////////////////////////////////////////////////////////////////////////

procedure TFmCreateTeacher.SaveFunction(FName, LName, Tel, Address, NCode,
  Educate: String; IDTeacher, Age: Integer);
begin
with TADOQuery.Create(Nil) DO
  begin
    Connection := DataModule1.ADOConnection1;
    SQL.Clear;
    SQL.Add('Select * from Students');
    SQL.Add('where IDTeacher = '+IntToStr(IDTeacher));
    Open;
    if Not (IsEmpty) then
    begin
      ShowMessage('This ID exist. you cn npot use it again!');
      Abort;
    end;
  end;


With Teacher_QRY Do
  begin
    Insert;
    FieldByName('IDTeacher').AsInteger := IDTeacher;
    FieldByName('FirstName').AsString := FName;
    FieldByName('LastName').AsString := LName;
    FieldByName('Educate').AsString := Educate;
    FieldByName('Telephone').AsString := Tel;
    FieldByName('Address').AsString := Address;
    FieldByName('NationalCode').AsString := NCode;
    FieldByName('Age').AsInteger := Age;
    Post;
  end;
end;

end.
