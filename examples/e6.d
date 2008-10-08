import dk.dkinter;
import std.stdio;


int main(string[] args)
{
  auto root=new Tk();

  auto sc=new Scale(root,"scale");sc.pack();
  sc.cfg(["orient":HORIZONTAL]);
  auto sbtn=new Button(root,"Print",
		       delegate (Widget w,Event)
		       {
			 writeln("get: ",sc.get());
			 sc.set(10);
		       });
  sbtn.pack();
  auto btn=new Button(root,"Exit",delegate (Widget w,Event){root.exit();});btn.pack();
  root.mainloop();
  return 0;
}
