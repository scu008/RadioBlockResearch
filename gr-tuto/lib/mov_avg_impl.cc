/* -*- c++ -*- */
/*
 * Copyright 2022 lws.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

#include "mov_avg_impl.h"
#include <gnuradio/io_signature.h>

namespace gr {
namespace tuto {


using input_type = float;
using output_type = float;
mov_avg::sptr mov_avg::make(int size)
{
    return gnuradio::make_block_sptr<mov_avg_impl>(size);
}


/*
 * The private constructor
 */
mov_avg_impl::mov_avg_impl(int size)
    : gr::sync_block("mov_avg",
                     gr::io_signature::make(
                         1 /* min inputs */, 1 /* max inputs */, sizeof(input_type)),
                     gr::io_signature::make(
                         1 /* min outputs */, 1 /*max outputs */, sizeof(output_type)))
{
    _size = size;
    set_history(_size);
}

/*
 * Our virtual destructor.
 */
mov_avg_impl::~mov_avg_impl() {}

int mov_avg_impl::work(int noutput_items,
                       gr_vector_const_void_star& input_items,
                       gr_vector_void_star& output_items)
{
    auto in = static_cast<const input_type*>(input_items[0]);
    auto out = static_cast<output_type*>(output_items[0]);


    // Do <+signal processing+>
    float tmp = 0;
    for(int i=0; i<noutput_items; i++){
        tmp = 0;
        for(unsigned int j=0; j<history(); j++){
            tmp = tmp + in[i+j];
        }
        out[i] = tmp;
    }

    // Tell runtime system how many output items we produced.
    return noutput_items;
}

} /* namespace tuto */
} /* namespace gr */
