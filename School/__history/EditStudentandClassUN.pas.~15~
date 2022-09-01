unit EditStudentandClassUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB;

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
    procedure FormShow(Sender: TObject);
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


end.
