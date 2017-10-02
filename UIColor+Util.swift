//
//  UIColor+Util.swift
//
//  Created by Yota Odaka on 2017/10/02.
//  Copyright © 2017 Yota Odaka. All rights reserved.
//

import UIKit

// MARK: - Convenience Constructor

extension UIColor {

  convenience init(_ hex: Int, _ alpha: CGFloat = 1.0) {
    let r = CGFloat((hex & 0xFF0000) >> 16) / 255.0
    let g = CGFloat((hex & 0x00FF00) >> 8) / 255.0
    let b = CGFloat((hex & 0x0000FF)) / 255.0
    self.init(red: r, green: g, blue: b, alpha: alpha)
  }

  convenience init(red255: CGFloat, green255: CGFloat, blue255: CGFloat,
                   _ alpha: CGFloat) {
    self.init(red: red255/255.0, green: green255/255.0, blue: blue255/255.0,
              alpha: alpha)
  }
  
}
