//
//  ReactiveExt.swift
//  Pods
//
//  Created by 杨建祥 on 2020/2/5.
//

import UIKit
import RxSwift
import RxCocoa
import Toast_Swift

public extension Reactive where Base: UIView {
    
    var loading: Binder<Bool> {
        return Binder(self.base) { view, loading in
            view.isUserInteractionEnabled = !loading
            loading ? view.makeToastActivity(.center) : view.hideToastActivity()
        }
    }
    
}
