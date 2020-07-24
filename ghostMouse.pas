uses System.Windows.Forms;
uses GraphABC;
var
  r, delay,
  xcur, ycur,
  xmax, ymax,
  dir_x, dir_y: integer;
begin
  //SetWindowSize(80,60);
  Window.Caption:='ghostMouse';
  r:=3;
  delay:=55;
  xmax := Screen.PrimaryScreen.Bounds.Width;
  ymax := Screen.PrimaryScreen.Bounds.Height;
  dir_x := 1;
  dir_y := 1;
  repeat
    xcur:=System.Windows.Forms.Cursor.Position.X;
    ycur:=System.Windows.Forms.Cursor.Position.Y;

    TextOut(10,10,'x:'+intToStr(xcur)+', y:'+intToStr(ycur));
    xcur := xcur + dir_x*r;
    ycur := ycur + dir_y*r;
    
    if(xcur >= xmax) then dir_x := -1;
    if(xcur < 0 )    then dir_x :=  1;
    if(ycur >= ymax) then dir_y := -1;
    if(ycur < 0 )    then dir_y :=  1;
    
    System.Windows.Forms.Cursor.Position:= new Point(xcur, ycur);
    Sleep(1000*delay);
  until False;
end.