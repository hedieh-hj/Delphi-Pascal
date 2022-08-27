unit CreateClassUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXPickers, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB,
  DMUN, System.Actions, Vcl.ActnList;

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
    procedure FormShow(Sender: TObject);
    procedure SaveClick(Sender: TObject);



  private
    { Private declarations }
    Procedure RunQuery;
    Procedure SaveFunction(IDClass , aname :string );
  public
    { Public declarations }
  end;

var
  FmCreateClass: TFmCreateClass;

implementation

{$R *.dfm}



procedure TFmCreateClass.SaveClick(Sender: TObject);
begin
            SaveFunction(Code_EDT.Text,Name_EDT.Text );
end;




procedure TFmCreateClass.FormShow(Sender: TObject);
begin
 RunQuery;
end;


Procedure TFmCreateClass.RunQuery;
begin
  With Class_QRY Do
    begin
      SQL.Clear;
      SQL.Add('Select * from Classes');
      Open;
    end;
end;




procedure  TFmCreateClass.SaveFunction(IDClass  , aname :string );
begin
 With Class_QRY Do
  begin
    Insert;
    FieldByName('IDClass').AsString := IDClass;
    FieldByName('ClassName').AsString := aname;
    Post;
  end;

end;




end.



