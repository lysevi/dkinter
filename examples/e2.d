import dk.dkinter;
import std.stdio;

int main(string[] args)
{
  auto root=new Tk();

  auto lb=new Label(root,"Hello!");
  lb.cfg(["bg":"black","fg":"green"]);
  lb.pack();
  auto b1=new Button(root,"OK",delegate (Widget w,Event e){root.exit();}); 
  b1.pack();
  root.mainloop();
  return 0;
}
