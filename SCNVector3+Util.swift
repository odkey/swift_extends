//
//  SCNVector3+Util.swift
//
//  Created by Yota Odaka on 2017/09/28.
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

import SceneKit

// MARK: - Member Variables

extension SCNVector3 {

  var magnitude: Float {
    get {
      return Float(sqrt(self.x * self.x + self.y * self.y + self.z * self.z))
    }
  }

  var normalized: SCNVector3 {
    get {
      return self / self.magnitude
    }
  }

}

// MARK: - Member Methods

extension SCNVector3 {

  func distance(_ vector: SCNVector3) -> Float {
    return SCNVector3.distance(self, vector)
  }
  
  func distance_squared(_ vector: SCNVector3) -> Float {
    return SCNVector3.distance_squared(self, vector)
  }
  
  func cross(_ vector: SCNVector3) -> SCNVector3 {
    return SCNVector3(self.y * vector.z - self.z * vector.y,
                      self.z * vector.x - self.x * vector.z,
                      self.x * vector.y - self.y * vector.x)
  }
  
  func dot(_ vector: SCNVector3) -> Float {
    return Float(self.x * vector.x + self.y * vector.y + self.z * vector.z)
  }

}

// MARK: - Static Methods

extension SCNVector3 {
  
  static func zero() -> SCNVector3 {
    return SCNVector3(0.0, 0.0, 0.0)
  }
  
  static func magnitude(_ vector: SCNVector3) -> Float {
    return vector.magnitude
  }
  
  static func normalized(_ vector: SCNVector3) -> SCNVector3 {
    return vector.normalized
  }
  
  static func distance(_ lhs: SCNVector3, _ rhs: SCNVector3) -> Float {
    return (lhs - rhs).magnitude
  }
  
  static func distance_squared(_ lhs: SCNVector3, _ rhs: SCNVector3) -> Float {
    let vector = lhs - rhs
    return Float(vector.x * vector.x + vector.y * vector.y + vector.z * vector.z)
  }
  
  static func cross(_ lhs: SCNVector3, _ rhs: SCNVector3) -> SCNVector3 {
    return lhs.cross(rhs)
  }
  
  static func dot(_ lhs: SCNVector3, _ rhs: SCNVector3) -> Float {
    return lhs.dot(rhs)
  }
  
}

// MARK: - Operators

func +(lhs: SCNVector3, rhs: SCNVector3) -> SCNVector3 {
  return SCNVector3(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z)
}

func -(lhs: SCNVector3, rhs: SCNVector3) -> SCNVector3 {
  return SCNVector3(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z)
}

func *(lhs: SCNVector3, rhs: Float) -> SCNVector3 {
  return SCNVector3(lhs.x * CGFloat(rhs), lhs.y * CGFloat(rhs), lhs.z * CGFloat(rhs))
}

func *(lhs: Float, rhs: SCNVector3) -> SCNVector3 {
  return SCNVector3(CGFloat(lhs) * rhs.x, CGFloat(lhs) * rhs.y, CGFloat(lhs) * rhs.z)
}

func /(lhs: SCNVector3, rhs: Float) -> SCNVector3 {
  return SCNVector3(lhs.x / CGFloat(rhs), lhs.y / CGFloat(rhs), lhs.z / CGFloat(rhs))
}

func +=( lhs: inout SCNVector3, rhs: SCNVector3) {
  lhs = lhs + rhs
}

func -=( lhs: inout SCNVector3, rhs: SCNVector3) {
  lhs = lhs - rhs
}

func *=( lhs: inout SCNVector3, rhs: Float) {
  lhs = lhs * rhs
}

func /=( lhs: inout SCNVector3, rhs: Float) {
  lhs = lhs / rhs
}

func <(lhs: SCNVector3, rhs: SCNVector3) -> Bool {
  return lhs.magnitude < rhs.magnitude
}

func >(lhs: SCNVector3, rhs: SCNVector3) -> Bool {
  return lhs.magnitude > rhs.magnitude
}

func <=(lhs: SCNVector3, rhs: SCNVector3) -> Bool {
  return lhs.magnitude <= rhs.magnitude
}

func >=(lhs: SCNVector3, rhs: SCNVector3) -> Bool {
  return lhs.magnitude >= rhs.magnitude
}

func ===(lhs: SCNVector3, rhs: SCNVector3) -> Bool {
  return lhs.x == rhs.x && lhs.y == rhs.y && lhs.z == rhs.z
}

func ==(lhs: SCNVector3, rhs: SCNVector3) -> Bool {
  return lhs.magnitude == rhs.magnitude
}

func !=(lhs: SCNVector3, rhs: SCNVector3) -> Bool {
  return !(lhs == rhs)
}

func !==(lhs: SCNVector3, rhs: SCNVector3) -> Bool {
  return !(lhs === rhs)
}

