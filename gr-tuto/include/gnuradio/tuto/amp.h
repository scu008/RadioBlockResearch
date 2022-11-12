/* -*- c++ -*- */
/*
 * Copyright 2022 lws.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

#ifndef INCLUDED_TUTO_AMP_H
#define INCLUDED_TUTO_AMP_H

#include <gnuradio/sync_block.h>
#include <gnuradio/tuto/api.h>

namespace gr {
namespace tuto {

/*!
 * \brief <+description of block+>
 * \ingroup tuto
 *
 */
class TUTO_API amp : virtual public gr::sync_block
{
public:
    typedef std::shared_ptr<amp> sptr;

    /*!
     * \brief Return a shared_ptr to a new instance of tuto::amp.
     *
     * To avoid accidental use of raw pointers, tuto::amp's
     * constructor is in a private implementation
     * class. tuto::amp::make is the public interface for
     * creating new instances.
     */
    static sptr make(float value);
};

} // namespace tuto
} // namespace gr

#endif /* INCLUDED_TUTO_AMP_H */
