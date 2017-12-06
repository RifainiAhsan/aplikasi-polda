object FormPensiunan: TFormPensiunan
  Left = 260
  Top = 199
  Width = 928
  Height = 480
  Caption = 'Form Arsip Pensiunan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 457
    Height = 441
    Caption = 'pnl1'
    TabOrder = 0
    object lbl8: TLabel
      Left = 288
      Top = 208
      Width = 16
      Height = 13
      Caption = 'lbl8'
    end
    object lbl7: TLabel
      Left = 264
      Top = 36
      Width = 62
      Height = 13
      Caption = 'Nama Berkas'
    end
    object lbl4: TLabel
      Left = 72
      Top = 189
      Width = 78
      Height = 13
      Caption = 'Tanggal Pensiun'
    end
    object lbl3: TLabel
      Left = 72
      Top = 142
      Width = 27
      Height = 13
      Caption = 'Nama'
    end
    object lbl2: TLabel
      Left = 72
      Top = 92
      Width = 20
      Height = 13
      Caption = 'NRP'
    end
    object lbl1: TLabel
      Left = 72
      Top = 40
      Width = 57
      Height = 13
      Caption = 'No. Pensiun'
    end
    object lbl6: TLabel
      Left = 263
      Top = 92
      Width = 39
      Height = 13
      Caption = 'Jabatan'
    end
    object edt5: TEdit
      Left = 264
      Top = 54
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt3: TEdit
      Left = 66
      Top = 158
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edt2: TEdit
      Left = 66
      Top = 109
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edt1: TEdit
      Left = 67
      Top = 58
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object dtp2: TDateTimePicker
      Left = 65
      Top = 208
      Width = 186
      Height = 21
      Date = 43038.653967418980000000
      Time = 43038.653967418980000000
      TabOrder = 4
    end
    object btn2: TButton
      Left = 200
      Top = 272
      Width = 75
      Height = 25
      Caption = 'Lihat'
      TabOrder = 5
    end
    object btn1: TButton
      Left = 112
      Top = 272
      Width = 75
      Height = 25
      Caption = 'Pindai'
      TabOrder = 6
      OnClick = btn1Click
    end
    object btn3: TButton
      Left = 288
      Top = 272
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 7
      OnClick = btn3Click
    end
    object edt4: TEdit
      Left = 264
      Top = 110
      Width = 121
      Height = 21
      TabOrder = 8
    end
  end
  object pnl2: TPanel
    Left = 456
    Top = 0
    Width = 449
    Height = 441
    Caption = 'n'
    TabOrder = 1
    object pdfvwr1: TPdfViewer
      Left = 48
      Top = 16
      Width = 369
      Height = 364
      About = 'Synactis PDF Viewer version 1.0'
      AutoOpen = True
      Copies = 1
      EndPage = 0
      FitMode = vmFit
      LayoutMode = lmDontCare
      PageMode = pmStandard
      ShowPrintDialog = True
      ShowScrollBars = True
      ShowToolBar = True
      ShrinkToMargins = True
      StartPage = 1
    end
  end
end
