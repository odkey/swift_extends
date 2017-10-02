//
//  NSObject+Util.swift
//
//  Created by Yota Odaka on 2017/10/02.
//  Copyright © 2017 Yota Odaka. All rights reserved.
//

import Foundation

// MARK: - Static Variables

extension NSObject {

  static var className: String {
    get {
      return String(describing: self)
    }
  }

}

// MARK: - Member Variables

extension NSObject {

  var className: String {
    get {
      return type(of: self).className
    }
  }

}
