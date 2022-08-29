object FmStudentsandClass: TFmStudentsandClass
  Left = 0
  Top = 0
  Caption = 'FmStudentsandClass'
  ClientHeight = 439
  ClientWidth = 596
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
    Width = 596
    Height = 439
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 681
    object Create_PNL: TPanel
      Left = 1
      Top = 74
      Width = 197
      Height = 364
      Align = alLeft
      Color = 14469065
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 18
        Top = 29
        Width = 72
        Height = 21
        Caption = 'Student ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 17
        Top = 119
        Width = 55
        Height = 21
        Caption = 'Class ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 18
        Top = 56
        Width = 151
        Height = 23
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 18
        Top = 146
        Width = 151
        Height = 23
        TabOrder = 1
      end
      object Button1: TButton
        Left = 18
        Top = 227
        Width = 152
        Height = 33
        Caption = 'Save'
        TabOrder = 2
      end
      object Delete_BTN: TButton
        Left = 19
        Top = 305
        Width = 151
        Height = 33
        Caption = 'Delete'
        TabOrder = 3
      end
      object Button3: TButton
        Left = 19
        Top = 266
        Width = 151
        Height = 33
        Caption = 'Edit'
        TabOrder = 4
      end
    end
    object Header_PNL: TPanel
      Left = 1
      Top = 1
      Width = 594
      Height = 73
      Align = alTop
      Caption = 'Students and Classes'
      Color = 13084072
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      ExplicitWidth = 679
    end
    object DBGrid1: TDBGrid
      Left = 198
      Top = 74
      Width = 397
      Height = 364
      Align = alClient
      DataSource = StuandClass_DS
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IDStudent'
          Width = 178
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDClass'
          Visible = True
        end>
    end
  end
  object StuandClass_DS: TDataSource
    DataSet = StuandClass_QRY
    Left = 336
    Top = 224
  end
  object StuandClass_QRY: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM STUDENTCLASS')
    Left = 456
    Top = 224
    object StuandClass_QRYIDStudent: TWideStringField
      FieldName = 'IDStudent'
      Size = 50
    end
    object StuandClass_QRYIDClass: TWideStringField
      FieldName = 'IDClass'
      Size = 50
    end
  end
  object ActionList1: TActionList
    Left = 456
    Top = 304
    object SaveAction: TAction
      Caption = 'SaveAction'
      ShortCut = 16467
      OnExecute = SaveActionExecute
    end
  end
end
