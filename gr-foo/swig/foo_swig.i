/* -*- c++ -*- */

#define FOO_API

%include "gnuradio.i"           // the common stuff

//load generated python docstrings
%include "foo_swig_doc.i"

%{
#include "foo/amp.h"
%}

%include "foo/amp.h"
GR_SWIG_BLOCK_MAGIC2(foo, amp);
