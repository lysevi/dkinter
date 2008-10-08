import dk.dkinter;
import std.stdio;

int main(string[] args)
{
  auto root=new Tk();

  auto sb=new Spinbox(root);
  sb.pack();

  auto b=new Button(root,"Print",delegate (Widget w,Event)
		    {
		      writeln("get: ",sb.get());
		    });
  b.pack("side","left");
  
  auto exitB=new Button(root,"Exit",delegate (Widget w,Event){root.exit();});
  exitB.pack("side","left");

  root.mainloop();
  return 0;
}
