//
//  BaseViewController.swift
//  Pods
//
//  Created by 杨建祥 on 2020/1/31.
//

import UIKit
import RxSwift
import RxCocoa
import QMUIKit
import URLNavigator

open class BaseViewController: UIViewController {
    
    public var disposeBag = DisposeBag()
    public let navigator: NavigatorType
    
    var contentTop: CGFloat {
        var height = statusBarHeightConstant
        if let navBar = self.navigationController?.navigationBar, !navBar.isHidden {
            height += navBar.height
        }
        return height
    }
    
    var contentBottom: CGFloat {
        var height = safeBottom
        if let tabBar = self.tabBarController?.tabBar, !tabBar.isHidden, !self.hidesBottomBarWhenPushed {
            height += tabBar.height
        }
        return height
    }
    
    var contentFrame: CGRect {
        return CGRect(x: 0, y: self.contentTop, width: self.view.width, height: self.view.height - self.contentTop - self.contentBottom)
    }
    
    lazy var backBarItem: UIBarButtonItem = {
        return UIBarButtonItem(image: UIImage.qmui_image(with: .navBack, size: CGSize(width: 10, height: 18), lineWidth: 1.5, tintColor: UIColor.red), style: .plain, target: nil, action: nil)
    }()
    
    lazy var closeBarItem: UIBarButtonItem = {
        return UIBarButtonItem(image: UIImage.qmui_image(with: .navClose, size: CGSize(width: 15, height: 15), lineWidth: 1.5, tintColor: UIColor.red), style: .plain, target: nil, action: nil)
    }()
    
    // MARK: - Init
    public init(_ navigator: NavigatorType, _ reactor: BaseViewReactor) {
        self.navigator = navigator
        super.init(nibName: nil, bundle: nil)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - View
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        self.edgesForExtendedLayout = .all
        self.extendedLayoutIncludesOpaqueBars = true
        self.automaticallyAdjustsScrollViewInsets = false
        
        if self.navigationController?.viewControllers.count ?? 0 > 1 {
            self.navigationItem.leftBarButtonItem = self.backBarItem
        } else {
            if self.presentingViewController != nil {
                self.navigationItem.leftBarButtonItem = self.closeBarItem
            } else {
                self.navigationItem.leftBarButtonItem = nil
            }
        }
    }
    
    // MARK: - Method
    public func bind(reactor: BaseViewReactor) {
        reactor.viewController = self
        
        self.backBarItem.rx.tap.asObservable().subscribe(onNext: { [weak self] _ in
            guard let `self` = self else { return }
            self.navigationController?.popViewController()
        }).disposed(by: self.disposeBag)
        
        self.closeBarItem.rx.tap.asObservable().subscribe(onNext: { [weak self] _ in
            guard let `self` = self else { return }
            self.dismiss(animated: true, completion: nil)
        }).disposed(by: self.disposeBag)
        
    }
    
}
