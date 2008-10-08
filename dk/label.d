module dk.label;

import dk.widget;
import dk.options;

class Label: public Widget
{
  this(Widget master,string text)
    {
      Options o;o["text"]=text;
      super(master,"label",o);
    }
}
