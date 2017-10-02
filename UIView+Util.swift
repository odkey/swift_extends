//
//  UIView+Util.swift
//
//  Created by Yota Odaka on 2017/10/02.
//  Copyright © 2017 Yota Odaka. All rights reserved.
//

import UIKit

extension UIView {

  func removeAllSubview() {
    self.subviews.forEach({
      $0.removeFromSuperview()
    })
  }

}
