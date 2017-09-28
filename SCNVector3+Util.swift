//
//  SCNVector3+Util.swift
//
//  Created by Yota Odaka on 2017/09/28.
//  Copyright © 2017 Yota Odaka. All rights reserved.
//

import SceneKit

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

extension SCNVector3 {

  var magnitude: Float {
    get {
      return sqrt(self.x * self.x + self.y * self.y + self.z * self.z)
    }
  }

  var normalize: SCNVector3 {
    get {
      return self / self.magnitude
    }
  }
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

