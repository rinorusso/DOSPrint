program DOSPrint;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Unit1, printer4lazarus, pl_exsystem, Unit2
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='fast DOSPrint';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm_progress, Form_progress);
  Application.ShowMainForm:=false;
  Application.Run;
end.

