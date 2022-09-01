unit EditStudentandClassUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB, System.Actions, Vcl.ActnList, Common, DMUN;

type
  TFMEditStudentandClass = class(TForm)
    Firstname_LBL: TLabel;
    Label1: TLabel;
    Panel2: TPanel;
    IDStudent_EDT: TEdit;
    IDClass_EDT: TEdit;
    Register_BTN: TButton;
    EditStudentandClass_QRY: TADOQuery;
    FMEditstudentandClass: TPanel;
    ActionList1: TActionList;
    SaveAction: TAction;
    procedure FormShow(Sender: TObject);
    procedure SaveActionExecute(Sender: TObject);
  private
    { Private declarations }
    Procedure RunQuery;
  public
    { Public declarations }
    IDStu : Integer;
    IDCla : Integer;
  end;

var
  FMEditStudentandClass: TFMEditStudentandClass;

implementation

{$R *.dfm}

{ TFMEditStudentandClass }

procedure TFMEditStudentandClass.FormShow(Sender: TObject);
begin
   RunQuery;
end;

///////////////////////////////////////////////////////////////////////////////////

procedure TFMEditStudentandClass.RunQuery;
begin
  With EditStudentandClass_QRY Do
  begin
    SQL.Clear;
    SQL.Add('Select * from StudentClass where IDStudent = '+IntToStr(IDStu) +'and IDClass = ' +IntToStr(IDCla));
    Open;
    IDStudent_EDT.Text := FieldByName('IDStudent').AsString;
    IDClass_EDT.Text  := FieldByName('IDClass').AsString;
  end;
end;

///////////////////////////////////////////////////////////////////////////////////

procedure TFMEditStudentandClass.SaveActionExecute(Sender: TObject);
begin
   with EditStudentandClass_QRY Do
   begin
      SQL.Add(format('select * from studentclass where IDSTUDENT=%S and IDCLASS=%s',[inttostr(IDStu),inttostr(IDCla)]));
      Open;
      Edit;

      //checmk null field
      if (IDStudent_EDT.Text='') or (IDclass_EDT.Text='') then
      begin
        ShowMessage('This ID field can not be empty.you have to insert an unique ID!');
        Abort;
      end;


      with TADOQuery.Create(nil) Do
      begin

        //check student id is not exist
        if IsValid('students','IDStudent','null',strtoint(IDStudent_EDT.Text),strtoint(IDStudent_EDT.Text),tvdtIDNotExist) then //==true
        begin
          ShowMessage('This ID for student does not exist!');
          Abort;
         end;

         //check class id is not exist
        if IsValid('classes','IDclass','null',strtoint(IDclass_EDT.Text),strtoint(IDclass_EDT.Text),tvdtIDNotExist) then //==true
        begin
          ShowMessage('This ID for class does not exist!');
          Abort;
         end;

         //check repeat row (select * from StudentTeacher where idstudent=4 and IDclass=103 )
        if IsValid('studentclass','IDstudent','IDClass',strtoint(IDstudent_EDT.Text),strtoint(IDclass_EDT.Text),tvdtIDNotExistID) then //==true
        begin
          ShowMessage('This row exist! change IDs.');
          Abort;
        end;


      end;


      //everything is ok
      FieldByName('IDStudent').AsString := IDStudent_EDT.Text;
      FieldByName('IDClass').AsString := IDClass_EDT.Text;
      Post;
      SQL.Clear;
      Close;
      ShowMessage('It is Done!');
   end;
end;

end.
