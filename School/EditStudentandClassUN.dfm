object FMEditStudentandClass: TFMEditStudentandClass
  Left = 0
  Top = 0
  Caption = 'FMEditStudentandClass'
  ClientHeight = 325
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object FMEditstudentandClass: TPanel
    Left = 0
    Top = 0
    Width = 385
    Height = 325
    Align = alClient
    TabOrder = 0
    object Firstname_LBL: TLabel
      Left = 69
      Top = 93
      Width = 86
      Height = 23
      Caption = 'IDStudent'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 69
      Top = 122
      Width = 61
      Height = 23
      Caption = 'IDClass'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 383
      Height = 48
      Align = alTop
      Caption = ' Edit Students and Class '
      Color = 13084072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object IDStudent_EDT: TEdit
      Left = 206
      Top = 97
      Width = 121
      Height = 23
      TabOrder = 1
    end
    object IDClass_EDT: TEdit
      Left = 206
      Top = 124
      Width = 121
      Height = 23
      TabOrder = 2
    end
    object Register_BTN: TButton
      Left = 69
      Top = 187
      Width = 258
      Height = 37
      Caption = 'Save'
      TabOrder = 3
      OnClick = SaveActionExecute
    end
  end
  object EditStudentandClass_QRY: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 64
    Top = 240
  end
  object ActionList1: TActionList
    Left = 288
    Top = 248
    object SaveAction: TAction
      Caption = 'SaveAction'
      ShortCut = 16467
      OnExecute = SaveActionExecute
    end
  end
end
