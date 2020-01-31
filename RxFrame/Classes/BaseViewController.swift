//
//  BaseViewController.swift
//  Pods
//
//  Created by 杨建祥 on 2020/1/31.
//

import UIKit
import RxSwift
import RxCocoa

open class BaseViewController: UIViewController {
    
    public var disposeBag = DisposeBag()
    
    // MARK: - Init
    public init(reactor: BaseViewReactor) {
        super.init(nibName: nil, bundle: nil)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    required public init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    // MARK: - Method
    public func bind(reactor: BaseViewReactor) {
        reactor.viewController = self
    }
    
}
