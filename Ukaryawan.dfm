object Form_karyawan: TForm_karyawan
  Left = 342
  Top = 210
  Width = 864
  Height = 514
  Caption = 'Form Karyawan Aktif'
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
    Color = 16744448
    TabOrder = 0
    object lbl6: TLabel
      Left = 271
      Top = 92
      Width = 90
      Height = 13
      Caption = 'Jabatan Karyawan'
    end
    object lbl8: TLabel
      Left = 288
      Top = 208
      Width = 16
      Height = 13
      Caption = 'lbl8'
    end
    object lbl7: TLabel
      Left = 264
      Top = 156
      Width = 62
      Height = 13
      Caption = 'Nama Berkas'
    end
    object lbl3: TLabel
      Left = 64
      Top = 158
      Width = 78
      Height = 13
      Caption = 'Nama Karyawan'
    end
    object lbl2: TLabel
      Left = 64
      Top = 116
      Width = 75
      Height = 13
      Caption = 'Kode Karyawan'
    end
    object lbl1: TLabel
      Left = 72
      Top = 72
      Width = 68
      Height = 13
      Caption = 'No. Karyawan'
    end
    object lbl4: TLabel
      Left = 136
      Top = 32
      Width = 138
      Height = 16
      Caption = 'Arsip Karyawan Aktif'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzEdt1edt5: TEdit
      Left = 264
      Top = 182
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object RzEdt1edt4: TEdit
      Left = 264
      Top = 110
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object RzEdt1edt3: TEdit
      Left = 66
      Top = 182
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object RzEdt1edt2: TEdit
      Left = 66
      Top = 133
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object RzEdt1edt1: TEdit
      Left = 67
      Top = 90
      Width = 121
      Height = 21
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
  end
  object pdfvwr1: TPdfViewer
    Left = 456
    Top = 0
    Width = 457
    Height = 457
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
