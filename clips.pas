unit CLIPS;

interface

uses
  ctypes;

const
{$IFDEF WIN32}
  CLIPS_DYNAMIC_LIB = 'CLIPSDynamic32';
{$ENDIF}
{$IFDEF WIN64}
  CLIPS_DYNAMIC_LIB = 'CLIPSDynamic64';
{$ENDIF}

function __CreateEnvironment(): pcsize_t; cdecl; external CLIPS_DYNAMIC_LIB;
procedure __DestroyEnvironment(env: pcsize_t); cdecl; external CLIPS_DYNAMIC_LIB;
procedure __EnvClear(env: pcsize_t); cdecl; external CLIPS_DYNAMIC_LIB;
procedure __EnvReset(env: pcsize_t); cdecl; external CLIPS_DYNAMIC_LIB;
function __EnvRun(env: pcsize_t; run: clonglong): clonglong; cdecl;
  external CLIPS_DYNAMIC_LIB;
function __EnvBuild(env: pcsize_t; benv: PChar): cint; cdecl; external CLIPS_DYNAMIC_LIB;

implementation

end.
