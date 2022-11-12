/* -*- c++ -*- */
/*
 * Copyright 2022 lws.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

#include "amp_impl.h"
#include <gnuradio/io_signature.h>

namespace gr {
namespace tuto {


using input_type = float;
using output_type = float;
amp::sptr amp::make(float value) { return gnuradio::make_block_sptr<amp_impl>(value); }


/*
 * The private constructor
 */
amp_impl::amp_impl(float value)
    : gr::sync_block("amp",
                     gr::io_signature::make(
                         1 /* min inputs */, 1 /* max inputs */, sizeof(input_type)),
                     gr::io_signature::make(
                         1 /* min outputs */, 1 /*max outputs */, sizeof(output_type)))
{
    _value = value;
}

/*
 * Our virtual destructor.
 */
amp_impl::~amp_impl() {}

int amp_impl::work(int noutput_items,
                   gr_vector_const_void_star& input_items,
                   gr_vector_void_star& output_items)
{
    auto in = static_cast<const input_type*>(input_items[0]);
    auto out = static_cast<output_type*>(output_items[0]);


    // Do <+signal processing+>


    for(int i=0; i<noutput_items; i++){
        out[i] = in[i] * _value;
    }
    // Tell runtime system how many output items we produced.
    return noutput_items;
}

} /* namespace tuto */
} /* namespace gr */
