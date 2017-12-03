program master;

uses
  Forms,
  Upendaftaran in 'Upendaftaran.pas' {Form_pendaftaran},
  Upendaftaran2 in 'Upendaftaran2.pas' {Form_pendaftaran2},
  Upendaftaran3 in 'Upendaftaran3.pas' {Form_pendaftaran3},
  Umenu in 'Umenu.pas' {Form_menu},
  Udatamodule in 'Udatamodule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm_menu, Form_menu);
  Application.CreateForm(TForm_pendaftaran, Form_pendaftaran);
  Application.CreateForm(TForm_pendaftaran2, Form_pendaftaran2);
  Application.CreateForm(TForm_pendaftaran3, Form_pendaftaran3);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
