import dk.dkinter;
import std.stdio;

int main(string[] args)
{
  auto root=new Tk();

  auto lb=new Label(root,"hello world!");lb.pack();
  auto mes=new Message(root,"Wellcome to\ndkinter!");mes.pack();

  root.mainloop();
  return 0;
}
