program DataHora;

uses
  Vcl.Forms,
  UDataHora in 'UDataHora.pas' {frmClock};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmClock, frmClock);
  Application.Run;
end.
