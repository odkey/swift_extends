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

import UIKit

// MARK: - Member Methods

extension UIImage {

  func resize(ratio: CGFloat) -> UIImage {
    let resizedSize = CGSize(width: Int(self.size.width * ratio),
                             height: Int(self.size.height * ratio))
    UIGraphicsBeginImageContextWithOptions(resizedSize, false, 2)
    draw(in: CGRect(x: 0, y: 0,
                    width: resizedSize.width, height: resizedSize.height))
    let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return resizedImage!
  }
  
  static func imageBufferToUIImage(pixelBuffer: CVPixelBuffer) -> UIImage {
    let ciImage = CIImage.init(cvPixelBuffer: pixelBuffer)
    
    let pixelBufferWidth = CGFloat(CVPixelBufferGetWidth(pixelBuffer))
    let pixelBufferHeight = CGFloat(CVPixelBufferGetHeight(pixelBuffer))
    let imageRect =
      CGRect(x: 0, y: 0, width: pixelBufferWidth, height: pixelBufferHeight)
    
    let ciContext = CIContext.init()
    
    let cgImage = ciContext.createCGImage(ciImage, from: imageRect )
    
    let image = UIImage(cgImage: cgImage!)
    return image
    
  }
  
}
