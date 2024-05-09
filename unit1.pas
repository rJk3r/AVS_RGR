unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.RadioButton2Change(Sender: TObject);
begin

end;

var
  number: Integer;
  n: Integer;
  s: string;
  const zn:string[16]='0123456789ABCDEF';
      c:array[0..5] of byte=(0,1,2,3,4,5);
procedure TForm1.Button1Click(Sender: TObject);
begin
    begin
      if TryStrToInt(Edit1.Text, number)
      then
        begin
        s := '';
        n := StrToInt(Edit1.Text);
        while n>0 do
         begin
          s:=zn[n mod 6+1]+s;
          n:=n div 6;
         end;
        Edit2.Text := s;
        end
        else
        begin
        Edit2.Text := 'Ожидалось число!';
        end;

        end;

        end;

end.

