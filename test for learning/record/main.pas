Program test(output);
Type
 Student_Record = Record
   Name   :  String [10];
   Family :  String [15];
   Age    :  Byte ;
   end;
var
 A: Student_Record;
begin
 with A do
 begin

  writeln('enter name :');
  readLn(Name);
  
  writeln('enter family :');
  readLn(Family);
  
  writeln('enter age :');
  readLn(Age);
  
  writeln(Name);
  writeln(Family);
  writeln(Age);
end;
ReadLn;
end.