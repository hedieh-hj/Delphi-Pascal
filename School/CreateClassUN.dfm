object FmCreateClass: TFmCreateClass
  Left = 0
  Top = 0
  Caption = 'FmCreateClass'
  ClientHeight = 574
  ClientWidth = 710
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
    Width = 710
    Height = 574
    Align = alClient
    TabOrder = 0
    object Create_PNL: TPanel
      Left = 1
      Top = 74
      Width = 241
      Height = 499
      Align = alLeft
      Color = 14469065
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 18
        Top = 29
        Width = 76
        Height = 21
        Caption = 'class name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 18
        Top = 79
        Width = 74
        Height = 21
        Caption = 'class code '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 18
        Top = 129
        Width = 88
        Height = 21
        Caption = 'teacher code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 18
        Top = 184
        Width = 32
        Height = 21
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 18
        Top = 243
        Width = 34
        Height = 21
        Caption = 'Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Name_EDT: TEdit
        Left = 114
        Top = 31
        Width = 121
        Height = 23
        TabOrder = 0
      end
      object Code_EDT: TEdit
        Left = 114
        Top = 81
        Width = 121
        Height = 23
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 112
        Top = 123
        Width = 121
        Height = 23
        TabOrder = 2
      end
      object DateTimePicker1: TDateTimePicker
        Left = 88
        Top = 184
        Width = 145
        Height = 33
        Date = 44794.000000000000000000
        Time = 0.406463055558560900
        TabOrder = 3
      end
      object TimePicker1: TTimePicker
        Left = 88
        Top = 237
        Width = 145
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 4
        Time = 44794.406890023150000000
        TimeFormat = 'h:nn AMPM'
      end
      object Save: TButton
        Left = 26
        Top = 350
        Width = 191
        Height = 36
        Action = SaveAction
        TabOrder = 5
      end
      object Delete_BTN: TButton
        Left = 26
        Top = 435
        Width = 191
        Height = 37
        Caption = 'Delete'
        TabOrder = 6
      end
      object Button3: TButton
        Left = 26
        Top = 392
        Width = 191
        Height = 37
        Caption = 'Edit'
        TabOrder = 7
      end
    end
    object Header_PNL: TPanel
      Left = 1
      Top = 1
      Width = 708
      Height = 73
      Align = alTop
      Caption = 'Create Class'
      Color = 13084072
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 242
      Top = 74
      Width = 467
      Height = 499
      Align = alClient
      DataSource = Class_DS
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IDClass'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ClassName'
          Visible = True
        end>
    end
  end
  object Class_QRY: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from classes')
    Left = 352
    Top = 296
    object Class_QRYIDClass: TWideStringField
      FieldName = 'IDClass'
      Size = 50
    end
    object Class_QRYClassName: TWideStringField
      FieldName = 'ClassName'
      Size = 50
    end
  end
  object Class_DS: TDataSource
    DataSet = Class_QRY
    Left = 528
    Top = 272
  end
  object ActionList1: TActionList
    Left = 456
    Top = 424
    object SaveAction: TAction
      Caption = 'SaveAction'
      ShortCut = 16467
      OnExecute = SaveClick
    end
  end
end
