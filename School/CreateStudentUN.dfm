object FmCreateStudent: TFmCreateStudent
  Left = 0
  Top = 0
  Caption = 'FmCreateStudent'
  ClientHeight = 470
  ClientWidth = 740
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
    Width = 740
    Height = 470
    Align = alClient
    TabOrder = 0
    object Create_PNL: TPanel
      Left = 1
      Top = 74
      Width = 269
      Height = 395
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
        Width = 70
        Height = 21
        Caption = 'Avg Score'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object F_Name_EDT: TEdit
        Left = 118
        Top = 28
        Width = 129
        Height = 23
        TabOrder = 0
      end
      object L_Name_EDT: TEdit
        Left = 118
        Top = 55
        Width = 129
        Height = 23
        TabOrder = 1
      end
      object AGE_EDT: TEdit
        Left = 118
        Top = 110
        Width = 129
        Height = 23
        TabOrder = 2
      end
      object Button1: TButton
        Left = 26
        Top = 281
        Width = 96
        Height = 33
        Action = SaveAction
        TabOrder = 3
      end
      object Delete_BTN: TButton
        Left = 148
        Top = 320
        Width = 101
        Height = 33
        Action = DeleteAction
        TabOrder = 4
      end
      object Button3: TButton
        Left = 148
        Top = 281
        Width = 99
        Height = 33
        Action = EditAction
        TabOrder = 5
      end
      object AVG_EDT: TEdit
        Left = 118
        Top = 82
        Width = 129
        Height = 23
        TabOrder = 6
      end
      object ID_EDT: TEdit
        Left = 118
        Top = 139
        Width = 129
        Height = 23
        TabOrder = 7
      end
      object TEL_EDT: TEdit
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
        Top = 320
        Width = 96
        Height = 33
        Caption = 'Search'
        TabOrder = 11
      end
    end
    object Header_PNL: TPanel
      Left = 1
      Top = 1
      Width = 738
      Height = 73
      Align = alTop
      Caption = 'Add Students'
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
      Left = 270
      Top = 74
      Width = 469
      Height = 395
      Align = alClient
      DataSource = Student_DS
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
          FieldName = 'IDStudent'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FirstName'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LastName'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NationalCode'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AvgScore'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Age'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Telephone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Address'
          Visible = True
        end>
    end
  end
  object Student_QRY: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from Students')
    Left = 360
    Top = 176
    object Student_QRYIDStudent: TWideStringField
      FieldName = 'IDStudent'
      Size = 50
    end
    object Student_QRYFirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 50
    end
    object Student_QRYLastName: TWideStringField
      FieldName = 'LastName'
      Size = 50
    end
    object Student_QRYNationalCode: TWideStringField
      FieldName = 'NationalCode'
      Size = 50
    end
    object Student_QRYAge: TIntegerField
      FieldName = 'Age'
    end
    object Student_QRYTelephone: TWideStringField
      FieldName = 'Telephone'
      Size = 50
    end
    object Student_QRYAddress: TWideStringField
      FieldName = 'Address'
      Size = 200
    end
    object Student_QRYAvgScore: TWideStringField
      FieldName = 'AvgScore'
      Size = 50
    end
  end
  object Student_DS: TDataSource
    DataSet = Student_QRY
    Left = 464
    Top = 160
  end
  object ActionList1: TActionList
    Left = 368
    Top = 240
    object SaveAction: TAction
      Caption = 'SaveAction'
      ShortCut = 16467
      OnExecute = SaveActionExecute
    end
    object EditAction: TAction
      Caption = 'EditAction'
      ShortCut = 16453
      OnExecute = EditActionExecute
    end
    object DeleteAction: TAction
      Caption = 'DeleteAction'
      ShortCut = 16452
      OnExecute = DeleteActionExecute
    end
  end
end
