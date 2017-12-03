unit Udatamodule;

interface

uses
  SysUtils, Classes, ZAbstractConnection, ZConnection;

type
  TDataModule1 = class(TDataModule)
    con: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

uses
  Umenu;

{$R *.dfm}

end.
