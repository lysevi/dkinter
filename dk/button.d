module dk.button;

import dk.widget;
import dk.callback;
import dk.options;

class Button:public Widget
{
  this(Widget master,string text,Callback callback)
    {
      Options o;
      o["text"]=text;
      super(master,"button",o,callback);
    }

  void flash()        {eval("flash");}
  void tkButtonEnter(){pure_eval("tkButtonEnter "~m_name);}
  void tkButtonLeave(){pure_eval("tkButtonLeave "~m_name);}
  void tkButtonDown() {pure_eval("tkButtonDown "~m_name);}
  void tkButtonUp()   {pure_eval("tkButtonUp "~m_name);}
  void tkButtonInvoke()   {pure_eval("tkButtonInvoke "~m_name);}
}

