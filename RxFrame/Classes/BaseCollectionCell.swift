//
//  BaseCollectionCell.swift
//  Pods
//
//  Created by 杨建祥 on 2020/1/31.
//

import UIKit
import RxSwift
import NSObject_Rx

open class BaseCollectionCell: UICollectionViewCell {
    
    public var disposeBag = DisposeBag()
    
    // MARK: - Public
    public func bind(item: BaseCollectionItem) {
        // Bind
        item.cell = self
//        self.setNeedsLayout()
//        self.layoutIfNeeded()
    }
    
    open class func size(width: CGFloat, item: BaseCollectionItem) -> CGSize {
        return CGSize(width: width, height: metric(44))
    }
    
    open class func size(height: CGFloat, item: BaseCollectionItem) -> CGSize {
        return CGSize(width: metric(100), height: height)
    }
    
}
