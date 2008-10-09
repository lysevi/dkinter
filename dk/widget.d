module dk.widget;

import dk.options;
import dk.event;
import dk.callback;
import dk.utils;
import dk.tcl;

import std.stdio;
import std.c.stdlib;
import std.string;

public const string HORIZONTAL="horizontal";
public const string VERTICAL="vertical";

/**
   Основной класс для всех виджетов, включвя Tk.
 */
class Widget
{
  this(Widget master,string wname,Options opt)
  {
    if(master.m_name==".")
      m_name="."~wname~.toString(m_cur_widget);
    else
      m_name=master.m_name~"."~wname~.toString(m_cur_widget);
    m_cur_widget++;
    m_interp=master.m_interp;
    Tcl_Eval(m_interp, cast(char*)(wname~" "~m_name~" "~options2string(opt)));
  }

  this(Widget master,string wname,Options opt,Callback c)
  {
    m_cur_widget++;
    m_interp=master.m_interp;
    int num=addCallback(this,c);
    auto mopt=opt;
    mopt["command"]=""~callbackPrefix~.toString(num)~"";
    if(master.m_name==".")
      m_name="."~wname~.toString(m_cur_widget);
    else
      m_name=master.m_name~"."~wname~.toString(m_cur_widget);
    Tcl_Eval(m_interp, cast(char*)(wname~" "~m_name~" "~options2string(mopt)));
  }

  this(){m_name=".";}

  string name()const {return m_name;}

  void exit() {}
  
  Tcl_Interp* interp(){return m_interp;}

  void pack()
  { pure_eval("pack "~m_name); }

  string pack(string a1,string a2,string args...)
  {
    string a="-"~a1~" "~a2;
    if(args.length>=2)
      return a~" "~args;
    else
      return pure_eval("pack  "~m_name~" "~a);
  }

  string pure_eval(string cmd)
  {
    Tcl_Eval(m_interp,cast(char*)(cmd));
    return .toString(m_interp.result);
  }

  string eval(string cmd) {return pure_eval(m_name~" "~cmd);}

  string cget(string key) {return eval(" cget -"~key);}

  string configure(string key,string value)
  {return eval(" configure -"~key~" "~value);}

  void cfg(Options o)
  {
    foreach(k,v;o)
      this.configure(k,v);
  }
  
  void clean() {}

  void bind(string event,Callback cb)
  {
    int num=addCallback(this,cb);
    writeln(pure_eval(" bind "~m_name~" "~event~" {"~callbackPrefix~.toString(num)~" %x %y %k %K %w %h %X %Y}"));
  }
protected:
  Tcl_Interp *m_interp;
  string      m_name="";
  static int  m_cur_widget=0;
}
