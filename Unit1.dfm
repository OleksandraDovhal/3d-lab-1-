object Form1: TForm1
  Left = 238
  Top = 464
  Width = 505
  Height = 357
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 320
    Height = 320
  end
  object Label1: TLabel
    Left = 328
    Top = 200
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object EditX1: TEdit
    Left = 336
    Top = 16
    Width = 57
    Height = 21
    TabOrder = 0
    Text = '1'
  end
  object EditY1: TEdit
    Left = 408
    Top = 16
    Width = 57
    Height = 21
    TabOrder = 1
    Text = '1'
  end
  object EditX2: TEdit
    Left = 336
    Top = 48
    Width = 57
    Height = 21
    TabOrder = 2
    Text = '200'
  end
  object EditY2: TEdit
    Left = 408
    Top = 48
    Width = 57
    Height = 21
    TabOrder = 3
    Text = '300'
  end
  object Button1: TButton
    Left = 336
    Top = 80
    Width = 129
    Height = 25
    Caption = 'Brezenhem'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 336
    Top = 120
    Width = 129
    Height = 25
    Caption = 'Digital Analizator'
    TabOrder = 5
    OnClick = Button2Click
  end
  object ColorCombo: TComboBox
    Left = 326
    Top = 168
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = 'Red'
    OnChange = ColorComboChange
    Items.Strings = (
      'Black'
      'Maroon'
      'Green'
      'Olive'
      'Navy'
      'Purple'
      'Teal'
      'Gray'
      'Silver'
      'Red'
      'Lime'
      'Yellow'
      'Blue'
      'Fuchsia'
      'Aqua')
  end
end
