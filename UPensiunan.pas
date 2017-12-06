unit UPensiunan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, PdfViewer, ExtCtrls;

type
  TFormPensiunan = class(TForm)
    pnl1: TPanel;
    lbl8: TLabel;
    lbl7: TLabel;
    lbl4: TLabel;
    lbl3: TLabel;
    lbl2: TLabel;
    lbl1: TLabel;
    edt5: TEdit;
    edt3: TEdit;
    edt2: TEdit;
    edt1: TEdit;
    dtp2: TDateTimePicker;
    btn2: TButton;
    btn1: TButton;
    btn3: TButton;
    pnl2: TPanel;
    pdfvwr1: TPdfViewer;
    edt4: TEdit;
    lbl6: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPensiunan: TFormPensiunan;

implementation

uses  Umenu, Upensiunan2;

{$R *.dfm}

procedure TFormPensiunan.btn1Click(Sender: TObject);
begin
Formpensiunan2.Show;
end;

procedure TFormPensiunan.btn3Click(Sender: TObject);
begin
Form_menu.Show;
FormPensiunan.Hide;
end;

end.
