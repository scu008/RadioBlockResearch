/* -*- c++ -*- */
/*
 * Copyright 2022 lws.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

#ifndef INCLUDED_TUTO_MOV_AVG_H
#define INCLUDED_TUTO_MOV_AVG_H

#include <gnuradio/sync_block.h>
#include <gnuradio/tuto/api.h>

namespace gr {
namespace tuto {

/*!
 * \brief <+description of block+>
 * \ingroup tuto
 *
 */
class TUTO_API mov_avg : virtual public gr::sync_block
{
public:
    typedef std::shared_ptr<mov_avg> sptr;

    /*!
     * \brief Return a shared_ptr to a new instance of tuto::mov_avg.
     *
     * To avoid accidental use of raw pointers, tuto::mov_avg's
     * constructor is in a private implementation
     * class. tuto::mov_avg::make is the public interface for
     * creating new instances.
     */
    static sptr make(int size);
};

} // namespace tuto
} // namespace gr

#endif /* INCLUDED_TUTO_MOV_AVG_H */
