object FmMain: TFmMain
  Left = 0
  Top = 0
  Caption = 'FmMain'
  ClientHeight = 493
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  TextHeight = 15
  object Main_PNL: TPanel
    Left = 0
    Top = 0
    Width = 703
    Height = 493
    Align = alClient
    Color = 15590630
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 652
    ExplicitHeight = 537
    object Menu_PNL: TPanel
      Left = 516
      Top = 73
      Width = 186
      Height = 419
      Align = alRight
      Color = 14469065
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 465
      ExplicitHeight = 463
      object CreateClass_BTN: TButton
        Left = 1
        Top = 1
        Width = 184
        Height = 49
        Align = alTop
        Caption = 'Create Class'
        TabOrder = 0
        OnClick = CreateClass_BTNClick
      end
      object CreateStudent_BTN: TButton
        Left = 1
        Top = 50
        Width = 184
        Height = 49
        Align = alTop
        Caption = 'Create Student'
        TabOrder = 1
        OnClick = CreateStudent_BTNClick
      end
      object CreateTeacher_BTN: TButton
        Left = 1
        Top = 99
        Width = 184
        Height = 49
        Align = alTop
        Caption = 'Create Teacher'
        TabOrder = 2
        OnClick = CreateTeacher_BTNClick
      end
      object StudentTeacher_BTN: TButton
        Left = 1
        Top = 148
        Width = 184
        Height = 49
        Align = alTop
        Caption = 'Student and Teacher'
        TabOrder = 3
        OnClick = StudentTeacher_BTNClick
      end
      object StudentClass_BTN: TButton
        Left = 1
        Top = 197
        Width = 184
        Height = 49
        Align = alTop
        Caption = 'Student and Class'
        TabOrder = 4
        OnClick = StudentClass_BTNClick
      end
      object Report_BTN: TButton
        Left = 1
        Top = 369
        Width = 184
        Height = 49
        Align = alBottom
        Caption = 'Report'
        TabOrder = 5
        ExplicitTop = 413
      end
    end
    object Header_PNL: TPanel
      Left = 1
      Top = 1
      Width = 701
      Height = 72
      Align = alTop
      Caption = 'SCHOOL'
      Color = 10649730
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      ExplicitWidth = 650
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 73
      Width = 515
      Height = 419
      Align = alClient
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hi'
          Visible = True
        end>
    end
  end
end
