unit EditClassUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB;

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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ClassID : Integer;
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
           SQl.Add('select * from Classes where IDClass ='+ InttoStr(ClassID));
           Open;
            ClassCode_EDT.Text := FieldByName ('IDClass').AsString;
            Classname_EDT.Text := FieldByName ('ClassName').AsString;
         end;
end;

end.

