//
//  Button.swift
//  Dicee-iOS13
//
//  Created by Lucas Santiago on 17/02/21.
//  Copyright © 2021 London App Brewery. All rights reserved.
//

import UIKit

class Button: UIButton {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
            self.titleLabel?.font = .systemFont(ofSize: 40.adjusted)
    }
}

extension Device {
  // Base width in point, use iPhone 6
  static let base: CGFloat = 375
  static var ratio: CGFloat {
    return UIScreen.main.bounds.width / base
  }
}

extension CGFloat {
  var adjusted: CGFloat {
    return self * Device.ratio
  }
}
extension Double {
  var adjusted: CGFloat {
    return CGFloat(self) * Device.ratio
  }
}
extension Int {
  var adjusted: CGFloat {
    return CGFloat(self) * Device.ratio
  }
}
