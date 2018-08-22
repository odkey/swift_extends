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
    var resizedImage = NSImage(size: resizedSize)
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
    
    let image = XImage(cgImage: cgImage!)
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
    let image = XImage(cgImage: quartzImage!)
    return image
  }
  
}
