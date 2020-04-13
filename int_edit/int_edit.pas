unit int_edit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, StdCtrls;

type
TIntEdit = class(Tedit)
private
  function GetValue: integer;
  procedure SetValue(Val: integer);
protected
  procedure KeyPress(var Key: Char); override;
public
  property Value: integer read GetValue write SetValue;
end;

procedure Register;

implementation

function TIntEdit.GetValue: integer;
begin
  try    Result := StrToInt(Text);
  except Result := 0; end;
end;

procedure TIntEdit.SetValue(Val: integer);
begin
  Text := IntToStr(Val);
end;

procedure TIntEdit.KeyPress(var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then Key := #0;
  inherited;
end;

procedure Register;
begin
  RegisterComponents('Samples', [TIntEdit]);
end;

end.

