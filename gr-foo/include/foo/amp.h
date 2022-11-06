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

#ifndef INCLUDED_FOO_AMP_H
#define INCLUDED_FOO_AMP_H

#include <foo/api.h>
#include <gnuradio/sync_block.h>

namespace gr {
  namespace foo {

    /*!
     * \brief <+description of block+>
     * \ingroup foo
     *
     */
    class FOO_API amp : virtual public gr::sync_block
    {
     public:
      typedef boost::shared_ptr<amp> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of foo::amp.
       *
       * To avoid accidental use of raw pointers, foo::amp's
       * constructor is in a private implementation
       * class. foo::amp::make is the public interface for
       * creating new instances.
       */
      static sptr make(float value);
    };

  } // namespace foo
} // namespace gr

#endif /* INCLUDED_FOO_AMP_H */

