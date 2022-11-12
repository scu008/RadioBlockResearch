/* -*- c++ -*- */
/*
 * Copyright 2022 lws.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

#ifndef INCLUDED_TUTO_AMP_IMPL_H
#define INCLUDED_TUTO_AMP_IMPL_H

#include <gnuradio/tuto/amp.h>

namespace gr {
namespace tuto {

class amp_impl : public amp
{
private:
    // Nothing to declare in this block.
    float _value;

public:
    amp_impl(float value);
    ~amp_impl();

    // Where all the action really happens
    int work(int noutput_items,
             gr_vector_const_void_star& input_items,
             gr_vector_void_star& output_items);
};

} // namespace tuto
} // namespace gr

#endif /* INCLUDED_TUTO_AMP_IMPL_H */
