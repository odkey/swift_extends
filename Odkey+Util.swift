//
//  Odkey+Util.swift
//
//  Created by Yota Odaka on 2017/10/02.
//
//  The MIT License (MIT)
//  Copyright (c) 2017 Yota Odaka
//
//  Permission is hereby granted, free of charge, to any person obtaining a
//  copy of this software and associated documentation files (the “Software”),
//  to deal in the Software without restriction, including without limitation
//  the rights to use, copy, modify, merge, publish, distribute, sublicense,
//  and/or sell copies of the Software, and to permit persons to whom the
//  Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
//  IN THE SOFTWARE.
//

import Foundation

// MARK: - Custom Helper Class: Odkey

class Odkey {

  // MARK: - Numeric

  class Numeric {
    // Static member
    static var pi: Double {
      return Double.pi
    }

    // Static Methods
    static func randomNumber(_ min: Float, _ max: Float) -> Float {
      return Float(arc4random_uniform(UINT32_MAX)) / Float(UINT32_MAX) *
               (max - min) + min
    }
    
    static func random0To1F() -> Float {
      return randomNumber(0.0, 1.0)
    }
    
    static func randomInt(_ min: Float, _ max: Float) -> Int {
      return Int(randomNumber(min, max))
    }
    
    static func mapBetween0To1(_ value: Float,
                               min: Float, max: Float) -> Float {
      return value / (max - min)
    }
    
  } // class Numeric

} // class Odkey
