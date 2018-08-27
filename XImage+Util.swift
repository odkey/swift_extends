//
//  UIImage+Util.swift
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

import CoreImage
import CoreGraphics
import AVFoundation

#if os(iOS)
import UIKit
#endif


// MARK: - Member Methods

extension XImage {

  func resize(ratio: CGFloat) -> XImage {
    let resizedSize = CGSize(width: Int(self.size.width * ratio),
                             height: Int(self.size.height * ratio))
    #if os(OSX)
//    UIGraphicsBeginImageContextWithOptions(resizedSize, false, 2)
    var resizedImage = XImage(size: resizedSize)
    print("[XImage+Util.swift] resize() method is not yet supported")
    return XImage()
    #elseif os(iOS)
    UIGraphicsBeginImageContextWithOptions(resizedSize, false, 2)
    
    draw(in: CGRect(x: 0, y: 0,
                    width: resizedSize.width, height: resizedSize.height))
    let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return resizedImage!
    #endif
  }
  
  static func imageBufferToUIImage(pixelBuffer: CVPixelBuffer) -> XImage {
    let ciImage = CIImage.init(cvPixelBuffer: pixelBuffer)
    
    let pixelBufferWidth = CGFloat(CVPixelBufferGetWidth(pixelBuffer))
    let pixelBufferHeight = CGFloat(CVPixelBufferGetHeight(pixelBuffer))
    let imageRect =
      CGRect(x: 0, y: 0, width: pixelBufferWidth, height: pixelBufferHeight)
    
    let ciContext = CIContext.init()
    
    let cgImage = ciContext.createCGImage(ciImage, from: imageRect )
    
    #if os(OSX)
    let image = XImage(cgImage: cgImage!, size: imageRect.size)
    #elseif os(iOS)
    let image = XImage(cgImage: cgImage!)
    #endif
    return image
    
  }
  
  static func sampleBufferToUIImage(sampleBuffer: CMSampleBuffer) -> XImage {
    let imageBuffer = CMSampleBufferGetImageBuffer(sampleBuffer)
    CVPixelBufferLockBaseAddress(imageBuffer!,
                                 CVPixelBufferLockFlags(rawValue: 0))
    let baseAddress = CVPixelBufferGetBaseAddress(imageBuffer!)
    let bytesPerRow = CVPixelBufferGetBytesPerRow(imageBuffer!)
    let width = CVPixelBufferGetWidth(imageBuffer!)
    let height = CVPixelBufferGetHeight(imageBuffer!)
    let colorSpace = CGColorSpaceCreateDeviceRGB()
    let bitmapInfo =
      CGBitmapInfo(rawValue: CGImageAlphaInfo.noneSkipFirst.rawValue |
                               CGBitmapInfo.byteOrder32Little.rawValue)
    let context = CGContext(data: baseAddress, width: width, height: height,
                            bitsPerComponent: 8, bytesPerRow: bytesPerRow,
                            space: colorSpace,
                            bitmapInfo: bitmapInfo.rawValue)
    let quartzImage = context!.makeImage()
    CVPixelBufferUnlockBaseAddress(imageBuffer!,
                                   CVPixelBufferLockFlags(rawValue: 0))
    #if os(OSX)
    let image = XImage(cgImage: quartzImage!,
                       size: CGSize(width: width, height: height))
    #elseif os(iOS)
    let image = XImage(cgImage: quartzImage!)
    #endif
    return image
  }
  
  
  /// * Cited from here - https://www.hackingwithswift.com/whats-new-in-ios-11
  func makeBuffer() -> CVPixelBuffer? {
    let attrs = [kCVPixelBufferCGImageCompatibilityKey: kCFBooleanTrue, kCVPixelBufferCGBitmapContextCompatibilityKey: kCFBooleanTrue] as CFDictionary
    var pixelBuffer : CVPixelBuffer?
    let status = CVPixelBufferCreate(kCFAllocatorDefault, Int(self.size.width), Int(self.size.height), kCVPixelFormatType_32ARGB, attrs, &pixelBuffer)
    guard (status == kCVReturnSuccess) else {
      return nil
    }

    CVPixelBufferLockBaseAddress(pixelBuffer!, CVPixelBufferLockFlags(rawValue: 0))
    let pixelData = CVPixelBufferGetBaseAddress(pixelBuffer!)

    let rgbColorSpace = CGColorSpaceCreateDeviceRGB()
    let context = CGContext(data: pixelData, width: Int(self.size.width), height: Int(self.size.height), bitsPerComponent: 8, bytesPerRow: CVPixelBufferGetBytesPerRow(pixelBuffer!), space: rgbColorSpace, bitmapInfo: CGImageAlphaInfo.noneSkipFirst.rawValue)

    context?.translateBy(x: 0, y: self.size.height)
    context?.scaleBy(x: 1.0, y: -1.0)

    UIGraphicsPushContext(context!)
    self.draw(in: CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height))
    UIGraphicsPopContext()
    CVPixelBufferUnlockBaseAddress(pixelBuffer!, CVPixelBufferLockFlags(rawValue: 0))

    return pixelBuffer
  }
  
}
