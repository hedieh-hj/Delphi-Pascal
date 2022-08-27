unit EditTeacherUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, DMUN,
  Data.DB, Data.Win.ADODB;

type
  TFMEditTeacher = class(TForm)
    Firstname_LBL: TLabel;
    Label1: TLabel;
    FMeditstudent: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel2: TPanel;
    Firstname_EDT: TEdit;
    Lastname_EDT: TEdit;
    Education_EDT: TEdit;
    Age_EDT: TEdit;
    Address_EDT: TEdit;
    Tell_EDT: TEdit;
    National_EDT: TEdit;
    Identify_EDT: TEdit;
    Register_BTN: TButton;
    EditTeacher_QRY: TADOQuery;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure OpenQuery;
  public
    { Public declarations }
    IDTeacher : integer;
  end;

var
  FMEditTeacher: TFMEditTeacher;

implementation

{$R *.dfm}

{ TFMEditTeacher }

procedure TFMEditTeacher.FormShow(Sender: TObject);
begin
     OpenQuery;
end;

procedure TFMEditTeacher.OpenQuery;
begin
  With EditTeacher_QRY Do
  begin
    SQL.Clear;
    SQL.Add('Select * from Teachers where IDTeacher = '+IntToStr(IDTeacher));
    Open;
    Firstname_EDT.Text := FieldByName('FirstName').AsString;
    Lastname_EDT.Text  := FieldByName('LastName').AsString;
    Education_EDT.Text := FieldByName('Educate').AsString;
    Age_EDT.Text := FieldByName('Age').AsString;
    Address_EDT.Text := FieldByName('Address').AsString;
    National_EDT.Text := FieldByName('NationalCode').AsString;
    Identify_EDT.Text := FieldByName('IdTeacher').AsString;
    Tell_EDT.Text := FieldByName('Telephone').AsString;
  end;
end;

end.