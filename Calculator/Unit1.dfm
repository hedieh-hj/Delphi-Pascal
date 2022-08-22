object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
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
    Width = 624
    Height = 441
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Button_PNL: TPanel
      Left = 0
      Top = 392
      Width = 624
      Height = 49
      Align = alBottom
      BevelOuter = bvNone
      Color = 13739943
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 52
        Top = 30
        Width = 30
        Height = 15
        Caption = 'ctrl+s'
      end
      object Label2: TLabel
        Left = 208
        Top = 32
        Width = 39
        Height = 15
        Caption = 'ctrl+ m'
      end
      object Label3: TLabel
        Left = 360
        Top = 32
        Width = 32
        Height = 15
        Caption = 'ctrl+d'
      end
      object Label4: TLabel
        Left = 528
        Top = 32
        Width = 32
        Height = 15
        Caption = 'ctrl+n'
      end
      object Sum_BTN: TButton
        Left = 22
        Top = 6
        Width = 98
        Height = 25
        Action = SumAction
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Minus_BTN: TButton
        Left = 176
        Top = 6
        Width = 97
        Height = 25
        Caption = 'minus'
        TabOrder = 1
        OnClick = MinusActionExecute
      end
      object Divide_BTN: TButton
        Left = 328
        Top = 6
        Width = 106
        Height = 25
        Caption = 'divide'
        TabOrder = 2
        OnClick = DivideActionExecute
      end
      object Multiply_BTN: TButton
        Left = 496
        Top = 6
        Width = 97
        Height = 25
        Caption = 'multiply'
        TabOrder = 3
        OnClick = MultiplyActionExecute
      end
    end
    object Panelup_PNL: TPanel
      Left = 0
      Top = 0
      Width = 624
      Height = 41
      Align = alTop
      Caption = 'Calculator '
      Color = 13739943
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '@Microsoft JhengHei'
      Font.Style = [fsBold, fsItalic]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
    object Panel_PNL: TPanel
      Left = 0
      Top = 41
      Width = 624
      Height = 351
      Align = alClient
      Color = 15852772
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      object StaticText1: TLabel
        Left = 8
        Top = 56
        Width = 112
        Height = 20
        Caption = 'First Number : '
        Font.Charset = ANSI_CHARSET
        Font.Color = -1
        Font.Height = -16
        Font.Name = '@Microsoft JhengHei UI'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object StaticText2: TLabel
        Left = 8
        Top = 120
        Width = 135
        Height = 20
        Caption = 'Second Number : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '@Microsoft JhengHei UI'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object StaticText3: TLabel
        Left = 8
        Top = 204
        Width = 60
        Height = 20
        Caption = 'Result : '
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = '@Microsoft JhengHei UI'
        Font.Style = [fsBold, fsItalic]
        ParentColor = False
        ParentFont = False
      end
      object First_EDT: TEdit
        Left = 153
        Top = 43
        Width = 222
        Height = 49
        AutoSize = False
        BiDiMode = bdLeftToRight
        DoubleBuffered = True
        NumbersOnly = True
        ParentBiDiMode = False
        ParentDoubleBuffered = False
        TabOrder = 0
      end
      object Second_EDT: TEdit
        Left = 153
        Top = 108
        Width = 222
        Height = 49
        AutoSize = False
        NumbersOnly = True
        TabOrder = 1
      end
      object Result_EDT: TEdit
        Left = 74
        Top = 186
        Width = 303
        Height = 57
        AutoSize = False
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        NumbersOnly = True
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 2
      end
      object clear_BTN: TButton
        Left = 480
        Top = 100
        Width = 113
        Height = 50
        Caption = 'C'
        TabOrder = 3
        OnClick = clear_BTNClick
      end
      object DarkMode_BTN: TButton
        Left = 480
        Top = 44
        Width = 113
        Height = 50
        Caption = 'Dark / light Mode'
        TabOrder = 4
        OnClick = DarkMode_BTNClick
      end
    end
  end
  object ActionList1: TActionList
    Left = 544
    Top = 208
    object CloseAction: TAction
      Caption = 'CloseAction'
      ShortCut = 16465
      OnExecute = CloseActionExecute
    end
    object SumAction: TAction
      Caption = 'SumAction'
      ShortCut = 16467
      OnExecute = SumActionExecute
    end
    object MinusAction: TAction
      Caption = 'MinusAction'
      ShortCut = 16461
      OnExecute = MinusActionExecute
    end
    object DivideAction: TAction
      Caption = 'DivideAction'
      ShortCut = 16452
      OnExecute = DivideActionExecute
    end
    object MultiplyAction: TAction
      Caption = 'MultiplyAction'
      ShortCut = 16462
      OnExecute = MultiplyActionExecute
    end
  end
end
