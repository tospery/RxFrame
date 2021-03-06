//
//  UIViewControllerExt.swift
//  Pods
//
//  Created by 杨建祥 on 2020/2/3.
//

import UIKit

public extension UIViewController {
    
    struct RuntimeKey {
        static let automaticallySetModalPresentationStyleKey = UnsafeRawPointer.init(bitPattern: "automaticallySetModalPresentationStyleKey".hashValue)
    }
    
    var automaticallySetModalPresentationStyle: Bool? {
        get {
            objc_getAssociatedObject(self, RuntimeKey.automaticallySetModalPresentationStyleKey!) as? Bool
        }
        set {
            objc_setAssociatedObject(self, RuntimeKey.automaticallySetModalPresentationStyleKey!, newValue, .OBJC_ASSOCIATION_COPY_NONATOMIC)
        }
    }
    
    @objc func rxf_present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        if #available(iOS 13.0, *) {
            var need = true
            if let _ = self as? UIImagePickerController {
                need = false
            } else if let _ = self as? UIAlertController {
                need = false
            }
            if need {
                if let auto = self.automaticallySetModalPresentationStyle, auto == false {
                    need = false
                }
            }
            if need {
                viewControllerToPresent.modalPresentationStyle = .fullScreen
            }
        }
        self.rxf_present(viewControllerToPresent, animated: flag, completion: completion)
    }
    
}
