//
//  String+Util.swift
//
//  Created by Yota Odaka on 2017/10/02.
//  Copyright © 2017 Yota Odaka. All rights reserved.
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
