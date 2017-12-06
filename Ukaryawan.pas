unit Ukaryawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PdfViewer, StdCtrls, ComCtrls, ExtCtrls;

type
  TForm_karyawan = class(TForm)
    pnl1: TPanel;
    lbl6: TLabel;
    lbl8: TLabel;
    lbl7: TLabel;
    lbl3: TLabel;
    lbl2: TLabel;
    lbl1: TLabel;
    RzEdt1edt5: TEdit;
    RzEdt1edt4: TEdit;
    RzEdt1edt3: TEdit;
    RzEdt1edt2: TEdit;
    RzEdt1edt1: TEdit;
    btn2: TButton;
    btn1: TButton;
    btn3: TButton;
    pdfvwr1: TPdfViewer;
    lbl4: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_karyawan: TForm_karyawan;

implementation

uses Upendaftaran2, Umenu, Upendaftaran;

{$R *.dfm}

procedure TForm_karyawan.btn1Click(Sender: TObject);
begin
Form_pendaftaran2.Show;
end;

procedure TForm_karyawan.btn3Click(Sender: TObject);
begin
Form_menu.Show;
Form_pendaftaran.Hide;
end;

end.
