unit Udinas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, PdfViewer;

type
  TForm_dinas = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    btn1: TButton;
    btn2: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    pnl1: TPanel;
    pnl2: TPanel;
    pdfvwr1: TPdfViewer;
    btn3: TButton;
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_dinas: TForm_dinas;

implementation

uses
  Upendaftaran2, Umenu, Upendaftaran3;

{$R *.dfm}



procedure TForm_dinas.btn3Click(Sender: TObject);
begin
Form_menu.Show;
Form_dinas.Hide;
end;

procedure TForm_dinas.btn1Click(Sender: TObject);
begin
Form_dinas2.Show;
end;

end.
