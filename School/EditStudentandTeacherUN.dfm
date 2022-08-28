object FMEditStudentteacher: TFMEditStudentteacher
  Left = 0
  Top = 0
  Caption = 'Edit '
  ClientHeight = 270
  ClientWidth = 388
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
    Width = 388
    Height = 270
    Align = alClient
    TabOrder = 0
    ExplicitTop = -16
    ExplicitWidth = 423
    ExplicitHeight = 457
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
      Width = 386
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
      ExplicitWidth = 421
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
    end
  end
  object Editstuteach_QRY: TADOQuery
    DataSource = FmStudentandTeacher.StudentsandTeacher_DS
    Parameters = <>
    Left = 336
    Top = 216
  end
end
