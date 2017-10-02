//
//  UIColor+Util.swift
//
//  Created by Yota Odaka on 2017/10/02.
//  Copyright © 2017 Yota Odaka. All rights reserved.
//

import UIKit

extension UIColor {

  convenience init(_ hex: Int, _ alpha: CGFloat = 1.0) {
    let r = CGFloat((hex & 0xFF0000) >> 16) / 255.0
    let g = CGFloat((hex & 0x00FF00) >> 8) / 255.0
    let b = CGFloat((hex & 0x0000FF)) / 255.0
    self.init(red: r, green: g, blue: b, alpha: alpha)
  }

}
