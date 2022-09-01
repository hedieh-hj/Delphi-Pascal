unit Common;

interface

uses DMUN,Data.DB,Data.Win.ADODB,System.SysUtils, System.Types;
Type                   //RELATION                   //USE BEFORE        //NOT EXIST
  TValidationType = (tvdtIdInUseForRelation = 1 ,tvdtIdIsExist = 2 ,tvdtIDNotExist=3,tvdtIDNotExistID=4);

Function IsValid(TableName,FieldName , secondfieldname : String; FirstFieldValue,SecondFieldValue : integer; ValidType : TValidationType): Boolean;
////



implementation

Function IsValid(TableName ,FieldName ,secondfieldname: String; FirstFieldValue,SecondFieldValue : integer; ValidType : TValidationType): Boolean;
begin
  Result := False;
  With TADOQuery.Create(Nil) DO
  begin
    Connection := DataModule1.ADOConnection1;
    SQL.Clear;


    if ValidType = tvdtIdInUseForRelation then
    begin       //for check relation
      SQL.Add(Format('Select * From %s Where %s = %s',[TableName,FieldName,inttostr(FirstFieldValue)]));
      Open;
      if Not IsEmpty then
        Result := True;
    end


    else          ///for check exist
    if ValidType = tvdtIdIsExist then
    begin
      SQL.Add(Format('Select * From %s Where %s = %s and %s <> %s',[TableName,FieldName,inttostr(FirstFieldValue),FieldName,inttostr(SecondFieldValue)]));
      Open;
      if  Not IsEmpty then
        Result := True;
    end


    else          //for check doesnt exist
    if validType = tvdtIDNotExist then
    begin
      SQL.Add(format('select * from %s where %s = %s ',[TableName,FieldName,inttostr(FirstFieldValue)]));
      Open;
      if  IsEmpty then
        Result := True;
    end


    else          //for check repeat row    select * from StudentTeacher where idstudent=4 and IDTeacher=3
    if validType = tvdtIDNotExistID then
    begin
      SQL.Add(format('select * from %s where %s = %s AND %s=%s',[TableName,FieldName,inttostr(FirstFieldValue),secondfieldname,inttostr(secondFieldValue)]));
      Open;
      if not IsEmpty then
        Result := True;
    end;


  end;

end;





end.
