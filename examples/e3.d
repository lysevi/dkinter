import dk.dkinter;
import std.stdio;

int main(string[] args)
{
  auto root=new Tk();

  auto e=new Entry(root);
  e.pack();
  auto b1=new Button(root,"OK",delegate (Widget w,Event)
		     {
		       writeln(e.text());
		       e.text("Hello, user! :)");
		     });  
  b1.pack();

  e.bind("<Button-1>",delegate(Widget,Event ev)
	 {
	   writeln("Clicked!!!");
	   writeln("x=",ev.x," y=",ev.y);
	 });
  
  root.mainloop();
  return 0;
}
