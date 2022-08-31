program Project1;

uses
  Vcl.Forms,
  MainUN in 'MainUN.pas' {FmMain},
  CreateClassUN in 'CreateClassUN.pas' {FmCreateClass},
  CreateTeacherUN in 'CreateTeacherUN.pas' {FmCreateTeacher},
  CreateStudentUN in 'CreateStudentUN.pas' {FmCreateStudent},
  StudentandTeacherUN in 'StudentandTeacherUN.pas' {FmStudentandTeacher},
  StudentandClassUN in 'StudentandClassUN.pas' {FmStudentsandClass},
  DMUN in 'Module\DMUN.pas' {DataModule1: TDataModule},
  EditStudentUN in 'EditStudentUN.pas' {FMEditStudent},
  EditTeacherUN in 'EditTeacherUN.pas' {FMEditTeacher},
  EditClassUN in 'EditClassUN.pas' {FMEditClass},
  EditStudentandTeacherUN in 'EditStudentandTeacherUN.pas' {FMEditStudentteacher},
  EditStudentandClassUN in 'EditStudentandClassUN.pas' {FMEditStudentandClass},
  Common in 'Common.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFmMain, FmMain);
  Application.CreateForm(TFmCreateClass, FmCreateClass);
  Application.CreateForm(TFmCreateTeacher, FmCreateTeacher);
  Application.CreateForm(TFmCreateStudent, FmCreateStudent);
  Application.CreateForm(TFmStudentandTeacher, FmStudentandTeacher);
  Application.CreateForm(TFmStudentsandClass, FmStudentsandClass);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFMEditStudent, FMEditStudent);
  Application.CreateForm(TFMEditTeacher, FMEditTeacher);
  Application.CreateForm(TFMEditClass, FMEditClass);
  Application.CreateForm(TFMEditStudentteacher, FMEditStudentteacher);
  Application.CreateForm(TFMEditStudentandClass, FMEditStudentandClass);
  Application.Run;
end.
