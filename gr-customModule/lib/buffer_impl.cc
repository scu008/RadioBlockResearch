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
#include "buffer_impl.h"

namespace gr {
  namespace customModule {

    buffer::sptr
    buffer::make(size)
    {
      return gnuradio::get_initial_sptr
        (new buffer_impl(size));
    }


    /*
     * The private constructor
     */
    buffer_impl::buffer_impl(size)
      : gr::sync_block("buffer",
              gr::io_signature::make(1, 1, sizeof(<+ITYPE+>)),
              gr::io_signature::make(1, 1, sizeof(<+OTYPE+>)))
    {
      _size = size;

    }

    /*
     * Our virtual destructor.
     */
    buffer_impl::~buffer_impl()
    {
    }

    int
    buffer_impl::work(int noutput_items,
        gr_vector_const_void_star &input_items,
        gr_vector_void_star &output_items)
    {
      const <float> *in = (const <float> *) input_items[0];
      <float> *out = (<float> *) output_items[0];

      for(int i=0; i<noutput_items; i++){
        out[i] = in[i] * size;
      }

      // Do <+signal processing+>

      // Tell runtime system how many output items we produced.
      return noutput_items;
    }

  } /* namespace customModule */
} /* namespace gr */

