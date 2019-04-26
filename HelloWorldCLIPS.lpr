program HelloWorldCLIPS;

uses CLIPS;

var
  env: Pointer;
begin
  env := __CreateEnvironment();
  __EnvBuild(env, '(defrule hello => (printout t "Hello World." crlf) (printout t "Hit return to end." crlf) (readline))');
  __EnvReset(env);
  __EnvRun(env,-1);
  __DestroyEnvironment(env);
end.

