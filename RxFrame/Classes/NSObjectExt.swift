//
//  NSObjectExt.swift
//  Pods
//
//  Created by 杨建祥 on 2020/1/31.
//

import UIKit

public extension NSObject {
    
    class var className: String {
        return NSStringFromClass(self).components(separatedBy: ".").last ?? ""
    }
    
    var className: String {
        return NSStringFromClass(type(of: self)).components(separatedBy: ".").last ?? ""
    }
    
}
