//
//  Int+Util.swift
//
//  Created by Yota Odaka on 2018/03/02.
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

extension Int {

  static func +=(lhs: inout Int, rhs: Int) {
    lhs = lhs + rhs
  }

  static func -=(lhs: inout Int, rhs: Int) {
    lhs = lhs - rhs
  }

  static func *=(lhs: inout Int, rhs: Int) {
    lhs = lhs * rhs
  }

  static func /=(lhs: inout Int, rhs: Int) {
    lhs = lhs / rhs
  }

  static func %=(lhs: inout Int, rhs: Int) {
    lhs = lhs % rhs
  }

  static prefix func ++(num: inout Int) -> Int {
    num += 1
    return num
  }

  static postfix func ++(num: inout Int) -> Int {
    let num_ = num
    num += 1
    return num_
  }

  static prefix func --(num: inout Int) -> Int {
    num -= 1
    return num
  }

  static postfix func --(num: inout Int) -> Int {
    let num_ = num
    num -= 1
    return num_
  }

  func hexStr(_ digit: Int = 2) -> String {
    var hex = String(self, radix: 16)
    while hex.count < digit {
      hex = "0" + hex
    }
    return hex
  }

  func splitedStr(_ separator: String = ",", _ groupSize: Int = 3) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    formatter.groupingSeparator = separator
    formatter.groupingSize = groupSize
    guard let str = formatter.string(from: NSNumber(value: self)) else {
      return "cannot convert Int to String"
    }
    return str
  }

}
