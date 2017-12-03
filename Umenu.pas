unit Umenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellAPI, IniFiles;

type
  TForm_menu = class(TForm)
    lbl1: TLabel;
    grp1: TGroupBox;
    grp2: TGroupBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure koneksi;
  end;

var
  Form_menu: TForm_menu;

implementation

uses
  Upendaftaran, Udatamodule;

{$R *.dfm}

procedure TForm_menu.btn1Click(Sender: TObject);
begin
Form_pendaftaran.Show;
Form_menu.Hide;
end;

procedure TForm_menu.btn9Click(Sender: TObject);
begin
Form_menu.Close;
end;

procedure TForm_menu.koneksi;
var
  config:TIniFile;
  koneksi:string;
begin
  koneksi:=ExtractFilePath(Application.ExeName)+'koneksi.ini';
  config:=TIniFile.Create(koneksi);
  if DataModule1.con.Connected then
  DataModule1.con.Disconnect;
  DataModule1.con.Protocol:=config.ReadString('Setting','Protocol','');
  DataModule1.con.Port:=StrToInt(config.ReadString('Setting','Port',''));
  DataModule1.con.LibraryLocation:=ExtractFilePath(Application.ExeName)+'libmysql.dll';
  DataModule1.con.HostName:=config.ReadString('Setting','Server','');
  DataModule1.con.User:=config.ReadString('Setting','UserName','');
  DataModule1.con.Password:=config.ReadString('Setting','Password','');
  DataModule1.con.Database:=config.ReadString('Setting','Database','');
  try
    DataModule1.con.Connect;
    ShowMessage('Tersambung Kedatabase');
  except
    ShowMessage('Tidak Tersambung Kedatabase');
end;
end;

end.
