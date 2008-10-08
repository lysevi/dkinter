module dk.scale;

import dk.widget;
import dk.options;
import std.conv;
import std.string;

class Scale: public Widget
{
  this(Widget master,string text)
    {
      Options o;
      o["label"]=text;
      super(master,"scale",o);
    }
  
  int get() { return .toInt(eval("get")); }

  void set(int value)  { eval("set "~.toString(value)); }
}
