module dk.spinbox;

import dk.options;
import dk.widget;

class Spinbox: public Widget
{
  this(Widget master)
    {
      Options o;
      o["from"]="0";
      o["to"]="10";
      super(master,"spinbox",o);
    }
  
  string get()
  {
    return eval("get");
  }
}
