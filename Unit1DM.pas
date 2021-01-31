unit Unit1DM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    Q1: TADOQuery;
    Q2: TADOQuery;
    Q3: TADOQuery;
    Q4: TADOQuery;
    Q5: TADOQuery;
    Q6: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
