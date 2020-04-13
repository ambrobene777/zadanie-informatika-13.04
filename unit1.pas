unit Unit1; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, int_edit;

type

  { TForm1 }

  TForm1 = class(TForm)
    HexLabel: TLabel;
    decEdit: TIntEdit;
    procedure decEditChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;


var
  Form1: TForm1; 

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.decEditChange(Sender: TObject);
begin
  HexLabel.Caption := IntToHex(decEdit.Value,1);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  decEditChange(Sender);
end;

end.

