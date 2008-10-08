module tk.utils;

import std.c.stdio;
import std.string;
import std.conv;
import std.c.string;
string join_with(T)(T[] xs, string sep = " ")
{
  if(xs.length == 0) return "";
  string s;
  foreach(x; xs)
    static if(is(T==string))
      {
	s ~=  x ~ sep;
      }
    else
      s ~= .toString(x) ~ sep;
  return s[0..$-sep.length];
}

int safeToInt(char* pc)
{
  string s;
  foreach(i;0..strlen(pc))
    s~=[pc[i]];
  try
    {
      return toInt(s);
    }
  catch(Exception e)
    {
      return -1;
    }
}
