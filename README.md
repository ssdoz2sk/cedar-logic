cedar-logic
===========

A fork of CEDAR Logic Simulator

I'm about to move all the sources to stand with any CodingStyle. The existing
source seems not to have any style, and therefore I'll invent my own
style. More precisely not the "my own", but rather adoptation Linux C-style
(mostly K&R) to C++. May be I'm wrong with it, I really do not know any C++
Styles. But I think, that any style will be better than no-style.

Here lines from my ~/.emacs for this style:
(defun linux-c++-mode ()
  "C++ mode just like C-mode for Linux kernel"
  (interactive)
  (c++-mode)
  (c-set-style "k&r")
  (setq c-basic-offset 8))

The file conding seems to be DOS-like, ie having \r\n line-endings. I see no
reason to change this, but so far as Emacs is failing to deduce coding
sometimes, I use now magic signature at first line of every file:
 -*- coding: utf-8-dos -*-. UTF-8 just because now is XXI century, and
plain-ASCII now is out of fashion.

# Request:
  * OpenGL
  * wxWidget: = 2.8 --with-opengl
  * Boost: >= 1.58
  * Libxml++: >=2.6

# Todo:
 - [ ] use CMake for (Windows/Linux)
 - [ ] i18n
 - [ ] Test
 - [ ] Add Debug Mode
 - [ ] Black Boxes

# Note:
  [CedarLogic 2.0 Update](http://digitalcommons.cedarville.edu/cgi/viewcontent.cgi?article=1401&context=research_scholarship_symposium)
  I find new CedarLogic.   
  But I can't find any sorce code and binary file.   
  Mnnn...