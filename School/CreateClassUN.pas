unit CreateClassUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXPickers, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB,
  DMUN, System.Actions, Vcl.ActnList, EditClassUN;

type
  TFmCreateClass = class(TForm)
    Main_PNL: TPanel;
    Create_PNL: TPanel;
    Header_PNL: TPanel;
    Name_EDT: TEdit;
    Code_EDT: TEdit;
    Edit3: TEdit;
    DateTimePicker1: TDateTimePicker;
    TimePicker1: TTimePicker;
    Save: TButton;
    Delete_BTN: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Class_QRY: TADOQuery;
    Class_DS: TDataSource;
    Class_QRYIDClass: TWideStringField;
    Class_QRYClassName: TWideStringField;
    ActionList1: TActionList;
    SaveAction: TAction;
    DeleteAction: TAction;
    EditAction: TAction;
    procedure FormShow(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure DeleteActionExecute(Sender: TObject);
    procedure EditActionExecute(Sender: TObject);
  private
    { Private declarations }
    Procedure RunQuery;
    Procedure SaveFunction(IDClass , aname :string );
  public
    { Public declarations }
    classid:string;
  end;


var
  FmCreateClass: TFmCreateClass;

implementation

{$R *.dfm}


 /////////////////////////////////////////////////////////////////////////////////////////////////

procedure TFmCreateClass.SaveClick(Sender: TObject);
begin
  SaveFunction(Code_EDT.Text,Name_EDT.Text );
end;

/////////////////////////////////////////////////////////////////////////////////////////////////

procedure TFmCreateClass.DeleteActionExecute(Sender: TObject);

var I:integer;
    CheckId : String;
begin
//id 2

   //check  teacher stu
    with TADOQuery.Create(nil) do
    begin
    Connection := DataModule1.ADOConnection1;
    sql.Clear;
    SQL.Add('select * from Classes');
    Open;
    end;
    checkid := Class_QRY.FieldByName('IDClass').AsString;
    with TADOQuery.Create(nil) do
    begin
      Connection := DataModule1.ADOConnection1;
      SQL.Text := 'select * from Studentclass where IDclass= ' + (checkid);
      Open;
       if not IsEmpty then
        begin
          ShowMessage('This class cannot be deleted because has relation with a student! you have to delete relation first.go to student and class form...');
          Abort;
        end;
    end;


  /////no relation
 I := MessageDlg('Do you want to delete?',mtConfirmation,[mbYes,mbNo],0,mbNo);
   if I=6 then
   begin
     Runquery;
     classid := class_QRY.FieldByName('IDclass').AsString;
     with TADOQuery.Create(nil) do
     begin
       Connection := DataModule1.ADOConnection1;
       //SQL.Text := 'delete from classes where IDclass=' + QuotedStr(classid);
       SQL.Add(Format('delete from classes where IDclass = %s',[classid]));
       ExecSQL;
     end;
     Runquery;
   end;
end;
/////////////////////////////////////////////////////////////////////////////////////////////////
procedure TFmCreateClass.EditActionExecute(Sender: TObject);
begin
    FmEditClass:= TFmEditClass.create(nil);
    FmEditClass .ClassID := Class_QRYIDClass.asinteger;
    FmEditClass.ShowModal;
    FreeAndNil(FmEditClass);
    RunQuery;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////

procedure TFmCreateClass.FormShow(Sender: TObject);
begin
 RunQuery;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////

Procedure TFmCreateClass.RunQuery;
begin
  With Class_QRY Do
    begin
      SQL.Clear;
      SQL.Add('Select * from Classes');
      Open;
    end;
end;


 /////////////////////////////////////////////////////////////////////////////////////////////////

procedure  TFmCreateClass.SaveFunction(IDClass  , aname :string );
begin
with TADOQuery.Create(Nil) DO
  begin
    Connection := DataModule1.ADOConnection1;
    SQL.Clear;
    SQL.Add('Select * from Class');
    SQL.Add('where IDClass = '+(IDClass));
    Open;
    if Not (IsEmpty) then
    begin
      ShowMessage('This ID exist. you can not use it again!');
      Abort;
    end;
  end;


 With Class_QRY Do
  begin
    Insert;
    FieldByName('IDClass').AsString := IDClass;
    FieldByName('ClassName').AsString := aname;
    Post;
  end;

end;




end.



