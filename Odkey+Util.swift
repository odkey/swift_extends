//
//  Odkey+Util.swift
//
//  Created by Yota Odaka on 2017/10/02.
//  Copyright © 2017 Yota Odaka. All rights reserved.
//

import Foundation

// MARK: - Custom Helper Class: Odkey

class Odkey {

  // MARK: - Numeric

  class Numeric {
    // Static member
    static let pi = Double.pi

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
