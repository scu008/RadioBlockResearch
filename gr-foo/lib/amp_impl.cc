/* -*- c++ -*- */
/*
 * Copyright 2022 lws.
 *
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 *
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <gnuradio/io_signature.h>
#include "amp_impl.h"

namespace gr {
  namespace foo {

    amp::sptr
    amp::make(float value)
    {
      return gnuradio::get_initial_sptr
        (new amp_impl(value));
    }


    /*
     * The private constructor
     */
    amp_impl::amp_impl(float value)
      : gr::sync_block("amp",
              gr::io_signature::make(1, 1, sizeof(<+ITYPE+>)),
              gr::io_signature::make(1, 1, sizeof(<+OTYPE+>)))
    {
      _value = value;

    }

    /*
     * Our virtual destructor.
     */
    amp_impl::~amp_impl()
    {
    }

    int
    amp_impl::work(int noutput_items,
        gr_vector_const_void_star &input_items,
        gr_vector_void_star &output_items)
    {
      const float *in = (const float *) input_items[0];
      float *out = (float *) output_items[0];

      // Do <+signal processing+>
      for(int i=0; i<noutput_items; i++){
        out[i] = in[i] * _value;
      }

      // Tell runtime system how many output items we produced.
      return noutput_items;
    }

  } /* namespace foo */
} /* namespace gr */

