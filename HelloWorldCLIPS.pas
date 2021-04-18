program HelloWorldCLIPS;
{$IF Defined(FPC)}
{$MODE Delphi}
{$ENDIF}

uses
  CLIPS;

var
  env: Pointer;

begin
  env := __CreateEnvironment();
  __Load(env, 'hello.clp');
  (*
  __Build(env, '(defrule hello => (printout t "Hello World." crlf) (printout t "DLL Example." crlf) (printout t "Hit return to end." crlf) (readline))');
  *)
  __Reset(env);
  __Run(env, -1);
  __DestroyEnvironment(env);
end.
