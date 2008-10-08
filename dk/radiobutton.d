module dk.radiobutton;

import dk.widget;
import dk.options;

import std.string;


class Radiobutton:public Widget
{
  this(Widget master,string text,int value)
    {
      Options o;
      o["text"]=text;
      o["value"]=.toString(value);
      super(master,"radiobutton",o);
    }

  void flash(){eval("flash");}
  void deselect(){eval("deselect");}
  void select(){eval("select");}
}
