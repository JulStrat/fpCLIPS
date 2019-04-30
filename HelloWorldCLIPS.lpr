program HelloWorldCLIPS;

uses
  ctypes,
  CLIPS;

var
  env: pcsize_t;

begin
  env := __CreateEnvironment();
  //__EnvBuild(env,
  //  '(defrule hello => (printout t "Hello World." crlf) (printout t "Hit return to end." crlf) (readline))');
  __EnvBuild(env, '(defrule hello => (printout t "Hello World." crlf))');
  __EnvReset(env);
  __EnvRun(env, -1);
  __DestroyEnvironment(env);
end.
