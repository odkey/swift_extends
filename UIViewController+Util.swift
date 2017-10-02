//
//  UIViewController+Util.swift
//
//  Created by Yota Odaka on 2017/10/02.
//  Copyright © 2017 Yota Odaka. All rights reserved.
//

import UIKit

// MARK: - Member Variables

extension UIViewController {

  var boundsWidth: CGFloat {
    get {
      return self.view.bounds.width
    }
  }
  
  var boundsHeight: CGFloat {
    get {
      return self.view.bounds.height
    }
  }
  
  var screenWidth: CGFloat {
    get {
      return UIScreen.main.bounds.width
    }
  }
  
  var screenHeight: CGFloat {
    get {
      return UIScreen.main.bounds.height
    }
  }

}

// MARK: - Member Methods

extension UIViewController {

  func removeAllSubviewOf(_ parentView: UIView) {
    let subviews = parentView.subviews
    for subview in subviews {
      subview.removeFromSuperview()
    }
  }

  func removeAllSubview() {
    self.removeAllSubviewOf(self.view)
  }

}
