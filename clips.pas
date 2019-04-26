unit CLIPS;

interface

uses
{$IFDEF WIN32}
  Windows;
{$ELSE}
  Wintypes, WinProcs;
{$ENDIF}

{$IFNDEF CLIPSWin32_H}
{$DEFINE CLIPSWin32_H}

function __CreateEnvironment(): Pointer; cdecl; external {$ifdef windows}'CLIPSDynamic32'{$endif};
procedure __DestroyEnvironment(env: Pointer); cdecl; external {$ifdef windows}'CLIPSDynamic32'{$endif};
procedure __EnvClear(env: Pointer); cdecl; external {$ifdef windows}'CLIPSDynamic32'{$endif};
procedure __EnvReset(env: Pointer); cdecl; external {$ifdef windows}'CLIPSDynamic32'{$endif};
function __EnvRun(env: Pointer; run: LongInt): LongInt; cdecl; external {$ifdef windows}'CLIPSDynamic32'{$endif};
function __EnvBuild(env: Pointer; benv: PChar): Integer; cdecl; external {$ifdef windows}'CLIPSDynamic32'{$endif};

{$ENDIF}

implementation
end.
