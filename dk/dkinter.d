module dk.dkinter;

public
{
  import dk.event;
  import dk.options;
  import dk.widget;
  import dk.tk;

  import dk.label;
  import dk.entry;
  import dk.listbox;
  import dk.radiobutton;
  import dk.message;
  import dk.scale;
  import dk.button;
  import dk.spinbox;
  import dk.canvas;
}

class Text: public Widget
{
  this(Widget master)
    {
      Options o;
      super(master,"text",o);
    }
}

class Frame:public Widget
{
  this(Widget master)
    {
      Options o;
      super(master,"frame",o);
    }
}
