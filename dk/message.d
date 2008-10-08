module dk.message;

import dk.widget;
import dk.options;

class Message: public Widget
{
  this(Widget master,string text)
    {
      Options o;
      o["text"]=text;
      super(master,"message",o);
    }
}
