//
//  SCNVector3+Util.swift
//
//  Created by Yota Odaka on 2017/09/28.
//  Copyright © 2017 Yota Odaka. All rights reserved.
//

import SceneKit

// MARK: - Calculation

extension SCNVector3 {

  var magnitude: Float {
    get {
      return sqrt(self.x * self.x + self.y * self.y + self.z * self.z)
    }
  }

  var normalized: SCNVector3 {
    get {
      return self / self.magnitude
    }
  }

}

extension SCNVector3 {

  static func magnitude(_ vector: SCNVector3) -> Float {
    return vector.magnitude
  }
  
  static func normalized(_ vector: SCNVector3) -> SCNVector3 {
    return vector.normalized
  }
  
  func dot(_ vector: SCNVector3) -> Float {
    return self.x * vector.x + self.y * vector.y + self.z * vector.z
  }
  
  func cross(_ vector: SCNVector3) -> SCNVector3 {
    return SCNVector3.init(self.y * vector.z - self.z * vector.y,
                           self.z * vector.x - self.x * vector.z,
                           self.x * vector.y - self.y * vector.x)
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
  return SCNVector3(lhs.x * rhs, lhs.y * rhs, lhs.z * rhs)
}

func /(lhs: SCNVector3, rhs: Float) -> SCNVector3 {
  return SCNVector3(lhs.x / rhs, lhs.y / rhs, lhs.z / rhs)
}

func +=( lhs: inout SCNVector3, rhs: SCNVector3) {
  lhs = lhs + rhs
}

func -=( lhs: inout SCNVector3, rhs: SCNVector3) {
  lhs = lhs - rhs
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

func ==(lhs: SCNVector3, rhs: SCNVector3) -> Bool {
  return lhs.x == rhs.x && lhs.y == rhs.y && lhs.z == rhs.z
}

func !=(lhs: SCNVector3, rhs: SCNVector3) -> Bool {
  return !(lhs == rhs)
}

