//
//  String+Util.swift
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

// MARK: - Member Variables

extension String {

  var url: URL? {
    get {
      return URL(string: self)
    }
  }

}

// MARK: - Member Methods

extension String {

  mutating func convertAlphabetsIntoUpperCase() {
    for charactor in self.characters {
      self.convertAlphabetIntoUpperCase(lower: String(charactor))
    }
  }
  
  mutating func convertAlphabetsIntoLowerCase() {
    for charactor in self.characters {
      self.convertAlphabetIntoLowerCase(upper: String(charactor))
    }
  }

  mutating func convertAlphabetIntoUpperCase(lower char: String) {
    switch char {
      case "a":
        self = self.replacingOccurrences(of: char, with: "A")
      case "b":
        self = self.replacingOccurrences(of: char, with: "B")
      case "c":
        self = self.replacingOccurrences(of: char, with: "C")
      case "d":
        self = self.replacingOccurrences(of: char, with: "D")
      case "e":
        self = self.replacingOccurrences(of: char, with: "E")
      case "f":
        self = self.replacingOccurrences(of: char, with: "F")
      case "g":
        self = self.replacingOccurrences(of: char, with: "G")
      case "h":
        self = self.replacingOccurrences(of: char, with: "H")
      case "i":
        self = self.replacingOccurrences(of: char, with: "I")
      case "j":
        self = self.replacingOccurrences(of: char, with: "J")
      case "k":
        self = self.replacingOccurrences(of: char, with: "K")
      case "l":
        self = self.replacingOccurrences(of: char, with: "L")
      case "m":
        self = self.replacingOccurrences(of: char, with: "M")
      case "n":
        self = self.replacingOccurrences(of: char, with: "N")
      case "o":
        self = self.replacingOccurrences(of: char, with: "O")
      case "p":
        self = self.replacingOccurrences(of: char, with: "P")
      case "q":
        self = self.replacingOccurrences(of: char, with: "Q")
      case "r":
        self = self.replacingOccurrences(of: char, with: "R")
      case "s":
        self = self.replacingOccurrences(of: char, with: "S")
      case "t":
        self = self.replacingOccurrences(of: char, with: "T")
      case "u":
        self = self.replacingOccurrences(of: char, with: "U")
      case "v":
        self = self.replacingOccurrences(of: char, with: "V")
      case "w":
        self = self.replacingOccurrences(of: char, with: "W")
      case "x":
        self = self.replacingOccurrences(of: char, with: "X")
      case "y":
        self = self.replacingOccurrences(of: char, with: "Y")
      case "z":
        self = self.replacingOccurrences(of: char, with: "Z")
      default: break
    }
    
  }
  
  mutating func convertAlphabetIntoLowerCase(upper char: String) {
    switch char {
      case "A":
        self = self.replacingOccurrences(of: char, with: "a")
      case "B":
        self = self.replacingOccurrences(of: char, with: "b")
      case "C":
        self = self.replacingOccurrences(of: char, with: "c")
      case "D":
        self = self.replacingOccurrences(of: char, with: "d")
      case "E":
        self = self.replacingOccurrences(of: char, with: "e")
      case "F":
        self = self.replacingOccurrences(of: char, with: "f")
      case "G":
        self = self.replacingOccurrences(of: char, with: "g")
      case "H":
        self = self.replacingOccurrences(of: char, with: "h")
      case "I":
        self = self.replacingOccurrences(of: char, with: "i")
      case "J":
        self = self.replacingOccurrences(of: char, with: "j")
      case "K":
        self = self.replacingOccurrences(of: char, with: "k")
      case "L":
        self = self.replacingOccurrences(of: char, with: "l")
      case "M":
        self = self.replacingOccurrences(of: char, with: "m")
      case "N":
        self = self.replacingOccurrences(of: char, with: "n")
      case "O":
        self = self.replacingOccurrences(of: char, with: "o")
      case "P":
        self = self.replacingOccurrences(of: char, with: "p")
      case "Q":
        self = self.replacingOccurrences(of: char, with: "q")
      case "R":
        self = self.replacingOccurrences(of: char, with: "r")
      case "S":
        self = self.replacingOccurrences(of: char, with: "s")
      case "T":
        self = self.replacingOccurrences(of: char, with: "t")
      case "U":
        self = self.replacingOccurrences(of: char, with: "u")
      case "V":
        self = self.replacingOccurrences(of: char, with: "v")
      case "W":
        self = self.replacingOccurrences(of: char, with: "w")
      case "X":
        self = self.replacingOccurrences(of: char, with: "x")
      case "Y":
        self = self.replacingOccurrences(of: char, with: "y")
      case "Z":
        self = self.replacingOccurrences(of: char, with: "z")
      default: break
    }
  }
  
}
