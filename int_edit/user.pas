{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit user;

interface

uses
  int_edit, LazarusPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('int_edit', @int_edit.Register);
end;

initialization
  RegisterPackage('user', @Register);
end.
