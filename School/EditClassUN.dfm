object FMEditClass: TFMEditClass
  Left = 0
  Top = 0
  Caption = 'FMEditClass'
  ClientHeight = 359
  ClientWidth = 383
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object TPanel
    Left = 0
    Top = 0
    Width = 383
    Height = 359
    Align = alClient
    TabOrder = 0
    object Firstname_LBL: TLabel
      Left = 69
      Top = 93
      Width = 96
      Height = 23
      Caption = 'Class Name'
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
      Width = 89
      Height = 23
      Caption = 'Class Code'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object FMeditstudent: TLabel
      Left = 69
      Top = 148
      Width = 122
      Height = 23
      Caption = 'Teacher Code '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 69
      Top = 175
      Width = 39
      Height = 23
      Caption = 'Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 69
      Top = 204
      Width = 41
      Height = 23
      Caption = 'Time'
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
      Width = 381
      Height = 48
      Align = alTop
      Caption = ' Edit Classes Info'
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
    object Classname_EDT: TEdit
      Left = 206
      Top = 97
      Width = 121
      Height = 23
      TabOrder = 1
    end
    object ClassCode_EDT: TEdit
      Left = 206
      Top = 124
      Width = 121
      Height = 23
      TabOrder = 2
    end
    object TeacherCode_EDT: TEdit
      Left = 206
      Top = 153
      Width = 121
      Height = 23
      TabOrder = 3
    end
    object Date_EDT: TEdit
      Left = 206
      Top = 180
      Width = 121
      Height = 23
      NumbersOnly = True
      TabOrder = 4
    end
    object Time_EDT: TEdit
      Left = 206
      Top = 209
      Width = 121
      Height = 23
      TabOrder = 5
    end
    object Register_BTN: TButton
      Left = 61
      Top = 276
      Width = 258
      Height = 37
      Caption = 'Save'
      TabOrder = 6
      OnClick = SaveActionExecute
    end
  end
  object EditClass_QRY: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 32
    Top = 296
  end
  object ActionList1: TActionList
    Left = 32
    Top = 232
    object SaveAction: TAction
      Caption = 'SaveAction'
      ShortCut = 16467
      OnExecute = SaveActionExecute
    end
  end
end
