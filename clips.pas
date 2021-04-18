unit CLIPS;

{$IF Defined(FPC)}
{$MODE Delphi}
{$PACKRECORDS C}
{$ENDIF}

interface

const
  CLIPS_VERSION = '6.4';
  CLIPS_DYNAMIC_LIB = 'CLIPSDLL';

function __CreateEnvironment(): Pointer;
  cdecl; external CLIPS_DYNAMIC_LIB;

procedure __DestroyEnvironment(env: Pointer);
  cdecl; external CLIPS_DYNAMIC_LIB;

function  __Load(env: Pointer; benv: PAnsiChar): Integer;
  cdecl; external CLIPS_DYNAMIC_LIB;

procedure __Clear(env: Pointer);
  cdecl; external CLIPS_DYNAMIC_LIB;

procedure __Reset(env: Pointer);
  cdecl; external CLIPS_DYNAMIC_LIB;

function __Run(env: Pointer; run: Int64): Int64;
  cdecl; external CLIPS_DYNAMIC_LIB;

function __Build(env: Pointer; benv: PAnsiChar): Integer;
  cdecl; external CLIPS_DYNAMIC_LIB;

implementation

end.
