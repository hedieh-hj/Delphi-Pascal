object FmStudentandTeacher: TFmStudentandTeacher
  Left = 0
  Top = 0
  Caption = 'FmStudentandTeacher'
  ClientHeight = 525
  ClientWidth = 909
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Main_PNL: TPanel
    Left = 0
    Top = 0
    Width = 909
    Height = 525
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -18
    ExplicitTop = -11
    ExplicitWidth = 625
    ExplicitHeight = 441
    object Create_PNL: TPanel
      Left = 1
      Top = 74
      Width = 197
      Height = 450
      Align = alLeft
      Color = 14469065
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 69
      ExplicitHeight = 377
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
      object Edit1: TEdit
        Left = 18
        Top = 56
        Width = 151
        Height = 30
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 18
        Top = 146
        Width = 151
        Height = 30
        TabOrder = 1
      end
      object Button1: TButton
        Left = 17
        Top = 251
        Width = 152
        Height = 33
        Caption = 'Save'
        TabOrder = 2
      end
      object Delete_BTN: TButton
        Left = 18
        Top = 329
        Width = 151
        Height = 33
        Caption = 'Delete'
        TabOrder = 3
      end
      object Button3: TButton
        Left = 18
        Top = 290
        Width = 151
        Height = 33
        Caption = 'Edit'
        TabOrder = 4
      end
    end
    object Header_PNL: TPanel
      Left = 1
      Top = 1
      Width = 907
      Height = 73
      Align = alTop
      Caption = 'Students and Teachers'
      Color = 13084072
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 625
    end
    object DBGrid1: TDBGrid
      Left = 198
      Top = 74
      Width = 710
      Height = 450
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
          FieldName = 'TeacherID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StudentID'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Teacher LastName'
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Student LastName'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Relation ID'
          Visible = True
        end>
    end
  end
end
