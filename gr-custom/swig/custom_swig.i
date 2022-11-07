/* -*- c++ -*- */

#define CUSTOM_API

%include "gnuradio.i"           // the common stuff

//load generated python docstrings
%include "custom_swig_doc.i"

%{
#include "custom/amp.h"
%}

%include "custom/amp.h"
GR_SWIG_BLOCK_MAGIC2(custom, amp);
