//
//  UIScrollViewExt.swift
//  Pods
//
//  Created by 杨建祥 on 2020/2/5.
//

import UIKit

public extension UIScrollView {
    
    struct RuntimeKey {
        static var contentViewKey = "contentViewKey"
    }
    
    var contentView: UIView? {
        get {
            return objc_getAssociatedObject(self, &RuntimeKey.contentViewKey) as? UIView
        }
        set {
            if let oldView = self.contentView {
                oldView.removeFromSuperview()
            }
            if let newView = newValue {
                self.addSubview(newView)
                newView.frame = self.bounds
            }
            objc_setAssociatedObject(self, &RuntimeKey.contentViewKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
//    @objc func rxf_present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
//        if #available(iOS 13.0, *) {
//            var need = true
//            if let _ = self as? UIImagePickerController {
//                need = false
//            } else if let _ = self as? UIAlertController {
//                need = false
//            }
//            if need {
//                if let auto = self.automaticallySetModalPresentationStyle, auto == false {
//                    need = false
//                }
//            }
//            if need {
//                viewControllerToPresent.modalPresentationStyle = .fullScreen
//            }
//        }
//        self.rxf_present(viewControllerToPresent, animated: flag, completion: completion)
//    }
    
}
