unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Math, DateUtils;

type
  TForm1 = class(TForm)
    Image1: TImage;
    EditX1: TEdit;
    EditY1: TEdit;
    EditX2: TEdit;
    EditY2: TEdit;
    Button1: TButton;
    Button2: TButton;
    ColorCombo: TComboBox;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Net;
    procedure DigitalAnalizator;
    procedure Brezenhem;
    procedure ColorComboChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ColorLine : String;
  Time: TDateTime;//Timer


implementation

{$R *.dfm}

procedure TForm1.Brezenhem;
var e : Real;
x,y,dx,dy,x1,x2,y1,y2,len,s1,s2,temp: Integer;
i : Integer;
Ob : Boolean;
begin
  x1:=StrToInt(EditX1.Text);
  x2:=StrToInt(EditX2.Text);
  y1:=StrToInt(EditY1.Text);
  y2:=StrToInt(EditY2.Text);

  x:=x1;
  y:=y1;
  dx:=abs(x2-x1);
  dy:=abs(y2-y1);
  s1:=sign(x2-x1);
  s2:=sign(y2-y1);
  if (dy>dx) then
    begin
      temp:=dx;
      dx:=dy;
      dy:=temp;
      Ob:=True;
    end
  else
      Ob:=False;
  e:=2*dy-dx;
  for i:=1 to Trunc(dx) do
    begin
      Image1.Canvas.Pixels[Trunc(x),Trunc(y)]:=StringToColor(ColorLine);
      while e>=0 do
      begin
        if ob= true then x:=x+s1
        else y:=y+s2;
        e:=e-2*dx;
      end;
      if ob=true then y:=y+s2
      else x:=x+s1;
      e:=e+2*dy;
      //Sleep(5);
      Application.ProcessMessages;
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Net;
  Time:=Now;
  Brezenhem;
  Label1.Caption:=FloatToStr(MilliSecondSpan(Now,Time));
end;

procedure TForm1.Net;
var i,j : Integer;
Rect: TRect;
begin
  with Image1.Canvas do
  begin
    Rect.Left:=0;
    Rect.Right:=320;
    Rect.Top:=0;
    Rect.Bottom:=320;
    Image1.Canvas.FillRect(Rect);   //(0,0,320,320,clWhite);
    FloodFill(1,1,clWhite,fsborder);
    Pen.Color:=clGray;
    Pen.Style:=psDot;
    for i:=0 to 20 do
      begin
        MoveTo(i*16,0);
        LineTo(i*16,320);
        Moveto(0,i*16);
        LineTo(320,i*16);
      end;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Net;
  Time:=Now;
  DigitalAnalizator;
  Label1.Caption:=FloatToStr(MilliSecondSpan(Now,Time));
end;

procedure TForm1.ColorComboChange(Sender: TObject);
begin
ColorLine:='cl'+ ColorCombo.Text;
end;

procedure TForm1.DigitalAnalizator;
var i,x1,x2,y1,y2,len: Integer;
    x,y,dx,dy: Real;
begin
  x1:=StrToInt(EditX1.Text);
  x2:=StrToInt(EditX2.Text);
  y1:=StrToInt(EditY1.Text);
  y2:=StrToInt(EditY2.Text);

  if abs(x2-x1)>=abs(y2-y1) then len:=abs(x2-x1)
  else len:=abs(y2-y1);
  dx:=(x2-x1)/len;
  dy:=(y2-y1)/len;
  x:=x1+0.5*sign(dx);
  y:=y1+0.5*sign(dy);
  i:=1;
  while(i<=len)do
  begin
    Image1.Canvas.Pixels[Trunc(x),Trunc(y)]:=StringToColor(ColorLine);
    x:=x+dx;
    y:=y+dy;
    Inc(i);
    //Sleep(5);
    Application.ProcessMessages;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ColorLine:='clRed';
end;

end.
