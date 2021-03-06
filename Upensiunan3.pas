unit Upensiunan3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxPreview, StdCtrls, frxExportPDF, frxDBSet, ExtCtrls,ShellAPI;

type
  TFormpensiunan3 = class(TForm)
    pnl1: TPanel;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    frxpdfxprt1: TfrxPDFExport;
    btn1: TButton;
    pnl2: TPanel;
    frxprvw1: TfrxPreview;
    procedure frxrprt1BeforePrint(Sender: TfrxReportComponent);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure DelFilesFrom(Directory, Filemask : string; DelSubDirs: Boolean);
     function waktu : string;
  end;

var
  Formpensiunan3: TFormpensiunan3;

implementation

uses
   UPensiunan, Upensiunan2, Upendaftaran;

{$R *.dfm}

{ TForm3 }

procedure TFormpensiunan3.DelFilesFrom(Directory, Filemask: string;
  DelSubDirs: Boolean);
  var Sourcelst : string;
  FOS : TSHFileOpStruct;
begin
  FillChar(FOS, SizeOf(FOS),0);
  FOS.Wnd:=Application.MainForm.Handle;
  FOS.wFunc:=FO_DELETE;
  Sourcelst:=Directory+'\'+Filemask+#0;
  FOS.pFrom:=PChar(Sourcelst);
  if not DelSubDirs then
  FOS.fFlags:=FOS.fFlags or FOF_FILESONLY;
  FOS.fFlags:=FOS.fFlags or FOF_NOCONFIRMATION;
  SHFileOperation(FOS);
end;

function TFormpensiunan3.waktu: string;
var tgl : TDateTime;
begin
tgl:=Now();
Result:=FormatDateTime('yyyy', tgl);
end;

procedure TFormpensiunan3.frxrprt1BeforePrint(Sender: TfrxReportComponent);
var img:TfrxComponent;
begin
  try
    img:=frxrprt1.FindObject('Picture1');
//    TfrxPictureView(img).Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+
//    'gambar_scan\'+Form2.vrtltbl1.FieldValues['Image']);
    except
      ShowMessage('object tidak di temukan');
      end;
end;

procedure TFormpensiunan3.FormShow(Sender: TObject);
begin
frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'PreviewScanPdf.fr3');
frxrprt1.FileName:=ExtractFilePath(Application.ExeName)+'PreviewScanPdf.fr3';
frxrprt1.ShowReport();
end;

procedure TFormpensiunan3.btn1Click(Sender: TObject);
var PDFku : TfrxCustomExportFilter;
namapdf,lokasihapus : string;
begin
  if asalscan = 0 then
  begin
    namapdf :=FormPensiunan.edt1.Text+'-'+FormPensiunan.edt2.Text+'-'+waktu+'pendaftaran.pdf';
    PDFku:=TfrxCustomExportFilter(frxpdfxprt1);
    PDFku.ShowDialog := False;
    PDFku.FileName:= ExtractFilePath(Application.ExeName)+'\ARPS\'+namapdf;
    frxrprt1.PrepareReport(False);
    frxrprt1.Export(PDFku);
    FormPensiunan.lbl8.Caption:=namapdf;
  end;
  Formpensiunan2.vrtltbl1.Clear;
  lokasihapus:=(ExtractFilePath(Application.ExeName)+'\Gambar_scan\');
  DelFilesFrom(lokasihapus,'*.*', FALSE);
  Close;
end;

end.
