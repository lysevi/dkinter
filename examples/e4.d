import dk.dkinter;
import std.stdio;
import std.string;

int main(string[] args)
{
  auto root=new Tk();
  auto lb=new Listbox(root);
  lb.insert(0,["1","2","3","4","5"]);
  lb.pack();
  auto b1=new Button(root,"Pop",delegate (Widget w,Event)
		     {
		       lb.del(0,0);
		     });  
  b1.pack();
  auto b2=new Button(root,"Push",delegate (Widget w,Event)
		     {
		       static int next=10;
		       lb.insert(lb.size(),[.toString(next++)]);
		     });  
  b2.pack();

  auto b3=new Button(root,"Selected",delegate (Widget w,Event)
		     {
		       writeln("index> ",
			       lb.curselection(),
			       " value> ",
			       lb.get(lb.curselection()));
		     });  
  b3.pack();
  root.mainloop();
  return 0;
}
