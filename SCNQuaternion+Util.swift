//
//  SCNQuaternion+Util.swift
//
//  Created by Yota Odaka on 2017/10/13.
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

extension SCNQuaternion {

  static func eulerToQuaternion(euler: SCNVector3) -> SCNQuaternion {
    let cy = cos(euler.y/2.0)
    let sy = sin(euler.y/2.0)
    let cr = cos(euler.z/2.0)
    let sr = sin(euler.z/2.0)
    let cp = cos(euler.x/2.0)
    let sp = sin(euler.x/2.0)

    return SCNQuaternion(x: cy * sr * cp - sy * cr * sp,
                         y: cy * cr * sp + sy * sr * cp,
                         z: sy * cr * cp - cy * sr * sp,
                         w: cy * cr * cp + sy * sr * sp)
  
  }

  static func eulerToQuaternion(euler: vector_float3) -> SCNQuaternion {
    let cy = cos(euler.y/2.0)
    let sy = sin(euler.y/2.0)
    let cr = cos(euler.z/2.0)
    let sr = sin(euler.z/2.0)
    let cp = cos(euler.x/2.0)
    let sp = sin(euler.x/2.0)

    return SCNQuaternion(x: CGFloat(cy * sr * cp - sy * cr * sp),
                         y: CGFloat(cy * cr * sp + sy * sr * cp),
                         z: CGFloat(sy * cr * cp - cy * sr * sp),
                         w: CGFloat(cy * cr * cp + sy * sr * sp))
  
  }

}
