unit EditClassUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB, System.Actions, Vcl.ActnList, DMUN, Common;

type
  TFMEditClass = class(TForm)
    Firstname_LBL: TLabel;
    Label1: TLabel;
    FMeditstudent: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel2: TPanel;
    Classname_EDT: TEdit;
    ClassCode_EDT: TEdit;
    TeacherCode_EDT: TEdit;
    Date_EDT: TEdit;
    Time_EDT: TEdit;
    Register_BTN: TButton;
    EditClass_QRY: TADOQuery;
    ActionList1: TActionList;
    SaveAction: TAction;
    procedure FormShow(Sender: TObject);
    procedure SaveActionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ClassID : integer;
  end;

var
  FmEditClass: TFmEditClass;

implementation

{$R *.dfm}



procedure TFMEditClass.FormShow(Sender: TObject);
begin
  with EditClass_QRY do
    begin
      SQL.Clear;
      SQl.Add('select * from Classes where IDClass ='+ inttostr(ClassID));
      Open;
      ClassCode_EDT.Text := FieldByName ('IDClass').AsString;
      Classname_EDT.Text := FieldByName ('ClassName').AsString;
    end;
end;

/////////////////////////////////////////////////////////////////////////////////

procedure TFMEditClass.SaveActionExecute(Sender: TObject);
var check: string;
begin
  check :=ClassCode_EDT.Text;
  with EditClass_QRY Do
  begin
    SQL.Add('select * from Classes');
    Open;
    Edit;

    // null id check
    if(ClassCode_EDT.Text='') then
    begin
      ShowMessage('This ID field can not be empty.you have to insert an unique ID!');
      Abort;
    end;


     //(FUNCTION IN COMMON.PAS USED FOR VALIDATION )
    //id is using now
    if IsValid('Classes','IdClass','null',strtoint(ClassCode_EDT.Text),(ClassID),tvdtIdIsExist) then //==true
    begin
      ShowMessage('This ID is using Now!try another ID.');
      Abort;
    end;


    ///for check relation
    if (ClassID <> StrToInt(ClassCode_EDT.Text)) and
        IsValid('studentclass','idclass','null',classID,classID,tvdtIdInUseForRelation) then
    begin
      ShowMessage('This ID class cannot be changed. you have to change ID in(student & class)form first!');
      Abort;
    end;


    //everything its ok
      FieldByName('classname').AsString :=classname_EDT.Text;
      FieldByName('IDClass').AsString := classcode_EDT.Text;
      Post;
      SQL.Clear;
      close;
      ShowMessage('It is Done!');
  end;

end;

end.

