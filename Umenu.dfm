object Form_menu: TForm_menu
  Left = 551
  Top = 201
  Width = 602
  Height = 480
  Caption = 'Form Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 208
    Top = 24
    Width = 148
    Height = 33
    Caption = 'Arsip POLDA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object grp1: TGroupBox
    Left = 24
    Top = 88
    Width = 249
    Height = 241
    Caption = 'Arsip'
    TabOrder = 0
    object btn1: TButton
      Left = 11
      Top = 26
      Width = 221
      Height = 25
      Caption = 'Kartu Pendaftaran'
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 10
      Top = 64
      Width = 222
      Height = 25
      Caption = 'Arsip Karyawan Aktif'
      TabOrder = 1
    end
    object btn3: TButton
      Left = 9
      Top = 101
      Width = 224
      Height = 25
      Caption = 'Arsip Pensiunan'
      TabOrder = 2
    end
    object btn4: TButton
      Left = 9
      Top = 139
      Width = 225
      Height = 25
      Caption = 'Arsip Dinas'
      TabOrder = 3
    end
  end
  object grp2: TGroupBox
    Left = 288
    Top = 88
    Width = 249
    Height = 241
    Caption = 'Master Data'
    TabOrder = 1
    object btn5: TButton
      Left = 24
      Top = 24
      Width = 201
      Height = 25
      Caption = 'Pendaftaran Polisi'
      TabOrder = 0
    end
    object btn6: TButton
      Left = 24
      Top = 64
      Width = 201
      Height = 25
      Caption = 'Karyawan'
      TabOrder = 1
    end
    object btn7: TButton
      Left = 24
      Top = 104
      Width = 201
      Height = 25
      Caption = 'Pensiunan'
      TabOrder = 2
    end
    object btn8: TButton
      Left = 24
      Top = 144
      Width = 201
      Height = 25
      Caption = 'Gaji'
      TabOrder = 3
    end
  end
  object btn9: TButton
    Left = 216
    Top = 344
    Width = 121
    Height = 25
    Caption = '&Keluar'
    TabOrder = 2
    OnClick = btn9Click
  end
end
