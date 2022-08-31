object FmCreateTeacher: TFmCreateTeacher
  Left = 0
  Top = 0
  Caption = 'FmCreateTeacher'
  ClientHeight = 486
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object Main_PNL: TPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 486
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 952
    object Create_PNL: TPanel
      Left = 1
      Top = 74
      Width = 269
      Height = 411
      Align = alLeft
      Color = 14469065
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 18
        Top = 29
        Width = 76
        Height = 21
        Caption = 'First Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 18
        Top = 56
        Width = 74
        Height = 21
        Caption = 'Last Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 227
        Width = 96
        Height = 21
        Caption = 'National code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 110
        Width = 27
        Height = 21
        Caption = 'Age'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 16
        Top = 137
        Width = 71
        Height = 21
        Caption = 'Teacher ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 16
        Top = 168
        Width = 70
        Height = 21
        Caption = 'Telephone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 16
        Top = 200
        Width = 56
        Height = 21
        Caption = 'Address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 18
        Top = 83
        Width = 54
        Height = 21
        Caption = 'Educate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object FName_EDT: TEdit
        Left = 118
        Top = 28
        Width = 129
        Height = 23
        TabOrder = 0
      end
      object LName_EDT: TEdit
        Left = 118
        Top = 55
        Width = 129
        Height = 23
        TabOrder = 1
      end
      object Age_EDT: TEdit
        Left = 118
        Top = 110
        Width = 129
        Height = 23
        TabOrder = 2
      end
      object Button1: TButton
        Left = 26
        Top = 289
        Width = 96
        Height = 33
        Action = SaveAction
        TabOrder = 3
      end
      object Delete_BTN: TButton
        Left = 148
        Top = 328
        Width = 101
        Height = 33
        Caption = 'Delete'
        TabOrder = 4
        OnClick = DeleteActionExecute
      end
      object TButton
        Left = 148
        Top = 289
        Width = 99
        Height = 33
        Caption = 'Edit'
        TabOrder = 5
        OnClick = Button3Click
      end
      object Educate_EDT: TEdit
        Left = 118
        Top = 84
        Width = 129
        Height = 23
        TabOrder = 6
      end
      object Code_EDT: TEdit
        Left = 118
        Top = 139
        Width = 129
        Height = 23
        TabOrder = 7
      end
      object Tel_EDT: TEdit
        Left = 118
        Top = 168
        Width = 129
        Height = 23
        TabOrder = 8
      end
      object Address_EDT: TEdit
        Left = 118
        Top = 197
        Width = 129
        Height = 23
        TabOrder = 9
      end
      object NCode_EDT: TEdit
        Left = 118
        Top = 226
        Width = 129
        Height = 23
        TabOrder = 10
      end
      object Button2: TButton
        Left = 26
        Top = 328
        Width = 96
        Height = 33
        Caption = 'Search'
        TabOrder = 11
      end
    end
    object Header_PNL: TPanel
      Left = 1
      Top = 1
      Width = 767
      Height = 73
      Align = alTop
      Caption = 'Add Teacher'
      Color = 13084072
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      ExplicitWidth = 950
    end
    object DBGrid1: TDBGrid
      Left = 270
      Top = 74
      Width = 498
      Height = 411
      Align = alClient
      DataSource = Teacher_DS
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IDTeacher'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FirstName'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LastName'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NationalCode'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Age'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Telephone'
          Width = 417
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Address'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Educate'
          Width = 87
          Visible = True
        end>
    end
  end
  object Teacher_QRY: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from teachers')
    Left = 472
    Top = 248
    object Teacher_QRYIDTeacher: TWideStringField
      FieldName = 'IDTeacher'
      Size = 50
    end
    object Teacher_QRYFirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 50
    end
    object Teacher_QRYLastName: TWideStringField
      FieldName = 'LastName'
      Size = 50
    end
    object Teacher_QRYNationalCode: TWideStringField
      FieldName = 'NationalCode'
      Size = 50
    end
    object Teacher_QRYAge: TIntegerField
      FieldName = 'Age'
    end
    object Teacher_QRYTelephone: TWideStringField
      FieldName = 'Telephone'
      Size = 50
    end
    object Teacher_QRYAddress: TWideStringField
      FieldName = 'Address'
      Size = 200
    end
    object Teacher_QRYEducate: TWideStringField
      FieldName = 'Educate'
      Size = 50
    end
  end
  object Teacher_DS: TDataSource
    DataSet = Teacher_QRY
    Left = 592
    Top = 248
  end
  object ActionList1: TActionList
    Left = 536
    Top = 344
    object SaveAction: TAction
      Caption = 'SaveAction'
      ShortCut = 16467
      OnExecute = SaveActionExecute
    end
    object EditAction: TAction
      Caption = 'EditAction'
      ShortCut = 16453
      OnExecute = Button3Click
    end
    object DeleteAction: TAction
      Caption = 'DeleteAction'
      OnExecute = DeleteActionExecute
    end
  end
end
