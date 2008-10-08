import dk.dkinter;
import std.stdio;

int main(string[] args)
{
  auto root=new Tk();

  auto lb=new Radiobutton(root,"Radio",0);lb.pack();
  auto b1=new Button(root,"Flash",delegate (Widget w,Event){lb.flash();});b1.pack();
  auto b2=new Button(root,"Deselect",delegate (Widget w,Event){lb.deselect();});b2.pack();
  auto b3=new Button(root,"Select",delegate (Widget w,Event){lb.select();});b3.pack();
  root.mainloop();
  return 0;
}
