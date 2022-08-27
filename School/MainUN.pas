unit MainUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids,CreateClassUN , CreateTeacherUN , CreateStudentUN , StudentandTeacherUN , StudentandclassUN;

type
  TFmMain = class(TForm)
    Main_PNL: TPanel;
    Menu_PNL: TPanel;
    Header_PNL: TPanel;
    CreateClass_BTN: TButton;
    CreateStudent_BTN: TButton;
    CreateTeacher_BTN: TButton;
    StudentTeacher_BTN: TButton;
    StudentClass_BTN: TButton;
    Report_BTN: TButton;
    DBGrid1: TDBGrid;
    procedure CreateClass_BTNClick(Sender: TObject);
    procedure CreateStudent_BTNClick(Sender: TObject);
    procedure CreateTeacher_BTNClick(Sender: TObject);
    procedure StudentTeacher_BTNClick(Sender: TObject);
    procedure StudentClass_BTNClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmMain: TFmMain;

implementation

{$R *.dfm}


procedure TFmMain.CreateClass_BTNClick(Sender: TObject);
begin
     FmCreateClass := TFmCreateClass.Create(nil);
     FmCreateClass.ShowModal;
     Freeandnil(FmCreateClass);
end;

procedure TFmMain.CreateStudent_BTNClick(Sender: TObject);
begin
     FmCreateStudent := TFmCreateStudent.Create(nil);
     FmCreateStudent.ShowModal;
     Freeandnil(FmCreateStudent);
end;

procedure TFmMain.CreateTeacher_BTNClick(Sender: TObject);
begin
     FmCreateTeacher := TFmCreateTeacher.Create(nil);
     FmCreateTeacher.ShowModal;
     Freeandnil(FmCreateTeacher);
end;

procedure TFmMain.FormClose(Sender: TObject; var Action: TCloseAction);

//  var
//    buttonint: Integer;
//
//  buttonint := MessageDlg('Are you sure you want to exit?', TMsgDlgType.mtCustom, mbYesNo, 0);
//  if buttonint = mrYes then
//    exit
//  else
//    Abort;
//end;

var
  buttonselect : integer;
begin
//    buttonselect := MessageDlg('Are you sure you want to exit?', TMsgDlgType.mtCustom, mbYesNo, 0);
//    if buttonselect = mrYES then
//    be
end;

procedure TFmMain.StudentClass_BTNClick(Sender: TObject);
begin
     FmStudentsandClass := TFmStudentsandClass.Create(nil);
     FmStudentsandClass.ShowModal;
     Freeandnil(FmStudentsandClass);
end;

procedure TFmMain.StudentTeacher_BTNClick(Sender: TObject);
begin
     FmStudentandTeacher := TFmStudentandTeacher.Create(nil);
     FmStudentandTeacher.ShowModal;
     Freeandnil(FmStudentandTeacher);
end;

end.
