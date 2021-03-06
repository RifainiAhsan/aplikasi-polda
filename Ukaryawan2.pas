unit Ukaryawan2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, VirtualTable, ExtCtrls, StdCtrls, Grids, DBGrids,
  DelphiTwain, jpeg, ShellAPI;

type
  TFormkaryawan2 = class(TForm)
    dlphtwn1: TDelphiTwain;
    pnl1: TPanel;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    pnl2: TPanel;
    img1: TImage;
    ds1: TDataSource;
    vrtltbl1: TVirtualTable;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dlphtwn1TwainAcquire(Sender: TObject; const Index: Integer;
      Image: TBitmap; var Cancel: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    function NamaGambar : string;
  end;

var
  Formkaryawan2: TFormkaryawan2;
  JPGku : TJPEGImage;
  asalscan : Integer;

implementation

uses
  Upendaftaran3, Umenu, Upendaftaran;

{$R *.dfm}

procedure TFormkaryawan2.btn1Click(Sender: TObject);
begin
if vrtltbl1.IsEmpty then
ShowMessage('data masih kosong') else
Close;
Form_pendaftaran3.Show;
end;

procedure TFormkaryawan2.btn2Click(Sender: TObject);
var
  sourceIndex : Integer;
  source : TTwainSource;
begin
  dlphtwn1.LibraryLoaded :=True;
  dlphtwn1.SourceManagerLoaded :=True;
  sourceIndex := dlphtwn1.SelectSource();

  if (sourceIndex <> -1) then
  begin
    source :=dlphtwn1.Source[sourceIndex];
    source.Loaded:=True;
    source.Enabled:=True;

  end;
end;

procedure TFormkaryawan2.btn3Click(Sender: TObject);
begin
if vrtltbl1.IsEmpty then
ShowMessage('data empty') else
vrtltbl1.Delete;
end;

procedure TFormkaryawan2.dlphtwn1TwainAcquire(Sender: TObject;
  const Index: Integer; Image: TBitmap; var Cancel: Boolean);
  var Lokasi, Gambar : String;
begin
  img1.Picture.Assign(Image);
  Cancel:=True;
  Gambar:=NamaGambar;
  Lokasi:=ExtractFilePath(Application.ExeName)+'\HGambar\';
  JPGku:=TJPEGImage.Create;
  JPGku.Assign(img1.Picture.Bitmap);
  JPGku.Free;
  vrtltbl1.Append;
  vrtltbl1['Image']:= Gambar;
  vrtltbl1.Post;
end;

function TFormkaryawan2.NamaGambar: string;
begin

end;



end.
