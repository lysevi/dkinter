import dk.dkinter;
import std.stdio;


int main(string[] args)
{
  auto root=new Tk();

  auto canv=new Canvas(root,800,600);
  canv.line([10,10,1000,1000]);
  canv.line("red",[50,500,100,100]);
  canv.oval("green",50,50,70,70);
  auto txt=canv.text("blue",110,150);
  canv.addtag("Text","withtag",txt);
  canv.pack();
  auto btn=new Button(root,"Exit",delegate (Widget w,Event){root.exit();});btn.pack();
  root.mainloop();
  return 0;
}
