//
//  UIImage+Util.swift
//
//  Created by Yota Odaka on 2017/10/02.
//  Copyright © 2017 Yota Odaka. All rights reserved.
//

import Foundation

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
  
}
