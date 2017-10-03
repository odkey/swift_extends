# swift_extends
## The helper files for Native Swift codes
### Coded by Yota Odaka.
### Latest updates is on Oct. 3th 2017

---

# Environments
- Swift4.0
- iOS 11

---

# Getting started
- Only you have to do is to import files under your project file.

---

# API
## String+Util.swift
Extensions of String class

### Member variables

`var url: URL? { get }`

### Member methods

`func convertAlphabetsInfoIntoUpperCase() -> Void`

`convertAlphabetsIntoLowerCase() -> Void`


## NSObject+Util.swift
Extension of NSObject class

### Static variables

`var className: String { get }`

### Member variables

`var className: String { get }`

## UIView+Util.swift
Extension of UIView class

### Member methods

`func removeAllSubview() -> Void`

## UIImage+Util.swift
Extension of UIImage class

### Member methods

`func resize(ratio: CGFloat) -> UIImage`

## UIColor+Util.swift
Extension of UIColor class

### Convenience initializer

`init(_ hex: Int, _ alpha: CGFloat)`

#### Arguments

- `hex` : hexadecimal color code
- `Alpha` : optional argument

## UIViewController+Util.swift
Extension of UIViewController class

### Member varialbles

`var boundsWidth: CGFloat { get }`

`var boundsHeight: CGFloat { get }`

`var screenWidth: CGFloat { get }`

`var screenHeight: CGFloat { get }`

### Member methods

`func removeAllSubviewOf(_ parentView: UIView)`

`func removeAllSubview()`

## SCNVector3+Util.swift
Extension of SCNVector3 class in SceneKit

### Member variables

`var magnitude: Float { get }`

`var normalized: SCNVector3 { get }`

### Member methods

`func distance(_ vector: SCNVector3) -> Float`

`func distance_squared(_ vector: SCNVector) -> Float`

`func cross(_ vector: SCNVector3) -> SCNVector3`

`func dot(_ vector: SCNVector3) -> Float`

### Static methods

`static func zero() -> SCNVector3`

`static func magnitude(_ vector: SCNVector3) -> Float`

`static func normalized(_ vector: SCNVector3) -> SCNVector3`

`static func distance(_ lhs: SCNVector3, _ rhs: SCNVector3) -> Float`

`static func distance_squared(_ lhs: SCNVector3, _ rhs: SCNVector3) -> Float`

`static func cross(_ lhs: SCNVector3, _ rhs: SCNVector3) -> SCNVector3`

`static func dot(_ lhs: SCNVector3, _ rhs: SCNVector3) -> Float`


### Operator

`+`, `-`, `*`, `/`, `+=`, `-=`, `*=`, `/=`, 

`<`, `>`, `<=`, `>=`

`==`, `!=`

`===`, `!==`

## Odkey+Util.swift
Custom helper class

### Odkey.Numeric class

`static var pi: Double { get }`

`static func randomNumber(_ min: Float, _ max: Float) -> Float`

`static func random0To1() -> Float`

`static func radomInt(_ min: Float, _ max: Float) -> Int`

`static func mapBetween0To1(_ value: Float, min: Float, max: Float) -> Float`

---

# License

The MIT License (MIT)
Copyright (c) 2017 Yota Odaka

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.