module dk.entry;

import dk.widget;
import dk.options;
import std.string;

class Entry: public Widget
{
  this(Widget master,string text="")
    {
      Options o;
      o["text"]=text;
      super(master,"entry",o);
    }

  /// Возращает введенный текст.
  string text()
  {
    return eval("get");
  }

  void clean()
  {
    int len=text().length;
    eval("delete 0 "~.toString(len));
  }

  void text(string txt)
  {
    clean();
    eval(" insert 0 \""~txt~"\"");
  }
}
