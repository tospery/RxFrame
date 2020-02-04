//
//  Runtime.swift
//  Pods
//
//  Created by 杨建祥 on 2020/2/3.
//

import UIKit
import QMUIKit

open class Runtime {

    open class func work() {
        ExchangeImplementations(UIViewController.self, #selector(UIViewController.present(_:animated:completion:)), #selector(UIViewController.rxf_present(_:animated:completion:)))
    }
    
}
