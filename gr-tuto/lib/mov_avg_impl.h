/* -*- c++ -*- */
/*
 * Copyright 2022 lws.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

#ifndef INCLUDED_TUTO_MOV_AVG_IMPL_H
#define INCLUDED_TUTO_MOV_AVG_IMPL_H

#include <gnuradio/tuto/mov_avg.h>

namespace gr {
namespace tuto {

class mov_avg_impl : public mov_avg
{
private:
    // Nothing to declare in this block.
    int _size;

public:
    mov_avg_impl(int size);
    ~mov_avg_impl();

    // Where all the action really happens
    int work(int noutput_items,
             gr_vector_const_void_star& input_items,
             gr_vector_void_star& output_items);
};

} // namespace tuto
} // namespace gr

#endif /* INCLUDED_TUTO_MOV_AVG_IMPL_H */
