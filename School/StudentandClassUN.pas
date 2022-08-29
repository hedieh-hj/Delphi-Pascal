unit StudentandClassUN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Data.Win.ADODB;

type
  TFmStudentsandClass = class(TForm)
    Main_PNL: TPanel;
    Create_PNL: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Delete_BTN: TButton;
    Button3: TButton;
    Header_PNL: TPanel;
    DBGrid1: TDBGrid;
    StuandClass_DS: TDataSource;
    StuandClass_QRY: TADOQuery;
    ActionList1: TActionList;
    StuandClass_QRYIDStudent: TWideStringField;
    StuandClass_QRYIDClass: TWideStringField;
    SaveAction: TAction;
    procedure FormShow(Sender: TObject);
    procedure SaveActionExecute(Sender: TObject);
  private
    { Private declarations }
    Procedure RunQuery;
    Procedure SaveFunction(IDStudent , IDClass :Integer);
  public
    { Public declarations }
  end;

var
  FmStudentsandClass: TFmStudentsandClass;

implementation

{$R *.dfm}


{ TFmStudentsandClass }



procedure TFmStudentsandClass.FormShow(Sender: TObject);
begin
  RunQuery;
end;

procedure TFmStudentsandClass.RunQuery;
begin
  with StuandClass_QRY DO
  begin
    SQL.Clear;
    SQL.Add('select * from studentclass');
    Open;
  end;
end;




procedure TFmStudentsandClass.SaveActionExecute(Sender: TObject);
begin
       SaveFunction(Strtoint(Edit1.Text) , Strtoint(Edit2.Text));
end;

procedure TFmStudentsandClass.SaveFunction(IDStudent, IDClass: Integer);
begin
  with StuandClass_QRY Do
  begin
    INSERT;
    fieldbyname('IDStudent').AsInteger := IDStudent ;
    fieldbyname('IDClass').AsInteger := IDClass;
  end;
end;

end.
