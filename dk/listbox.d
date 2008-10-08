module dk.listbox;

import dk.widget;
import dk.options;

import std.string;
import std.conv;

class Listbox: public Widget
{
  this(Widget master)
    {
      Options o;
      super(master,"listbox",o);
    }
  
  void insert(int index,string[] elements)
  {
    string result;
    foreach(cur;elements)
      result~=" "~cur;
    eval("insert "~.toString(index)~result);
  }
  
  void del(int from,int to){eval("delete "~.toString(from)~" "~.toString(to));}

  int size() { return .toInt(eval("size"));}

  string get(int index){return eval("get "~.toString(index)~" "~.toString(index));}
  
  int curselection(){return toInt(eval("curselection"));}
  
}
