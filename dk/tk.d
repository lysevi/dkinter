module dk.tk;

import std.stdio;
import std.c.stdlib;
import dk.widget;
import dk.tcl;
import dk.event;

class Tk:public Widget
{
  this()
  {
    m_interp = Tcl_CreateInterp();
    if(Tcl_Init(m_interp) != TCL_OK || Tk_Init(m_interp) != TCL_OK) 
      {
	if(*m_interp.result)
	  fprintf(stderr,"%s\n", m_interp.result);
	.exit(1);
      }
    m_window = Tk_MainWindow(m_interp);
    if (m_window == null) 
      {
	fprintf(stderr, "%s\n", m_interp.result);
	.exit(1);
      }
  }
  
  ~this()
    {
      Tcl_DeleteInterp(m_interp);
    }
  
  void exit() { Tcl_DeleteInterp(m_interp); }
  // Для использования в качестве Command.
  void exit(Widget,Event) { Tcl_DeleteInterp(m_interp); }
  void mainloop() { Tk_MainLoop();}
protected:
  Tk_Window m_window;
}
