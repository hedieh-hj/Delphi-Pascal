object FmStudentsandClass: TFmStudentsandClass
  Left = 0
  Top = 0
  Caption = 'FmStudentsandClass'
  ClientHeight = 439
  ClientWidth = 681
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
    Width = 681
    Height = 439
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -18
    ExplicitTop = -11
    ExplicitWidth = 619
    ExplicitHeight = 428
    object Create_PNL: TPanel
      Left = 1
      Top = 74
      Width = 197
      Height = 364
      Align = alLeft
      Color = 14469065
      ParentBackground = False
      TabOrder = 0
      ExplicitTop = 72
      ExplicitHeight = 356
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
        Height = 33
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 18
        Top = 146
        Width = 151
        Height = 31
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
      Width = 679
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
      ExplicitWidth = 625
    end
    object DBGrid1: TDBGrid
      Left = 198
      Top = 74
      Width = 482
      Height = 364
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
          FieldName = 'Class ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Student ID'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Class Name'
          Width = 78
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