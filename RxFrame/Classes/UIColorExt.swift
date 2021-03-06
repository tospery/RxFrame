//
//  UIColorExt.swift
//  Pods
//
//  Created by 杨建祥 on 2020/2/3.
//

import UIKit
import SwifterSwift

public extension UIColor {

    convenience init?(_ hex: Int) {
        self.init(hex: hex)
    }
    
    convenience init?(_ hexString: String) {
        self.init(hexString: hexString)
    }
    
}
