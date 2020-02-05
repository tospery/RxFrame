//
//  CollectionViewController.swift
//  Pods
//
//  Created by 杨建祥 on 2020/1/31.
//

import UIKit
import URLNavigator

open class CollectionViewController: ScrollViewController {

    public var collectionView: UICollectionView!
    
    public override init(_ navigator: NavigatorType, _ reactor: BaseViewReactor) {
        super.init(navigator, reactor)
        self.collectionView = (self.scrollView as! UICollectionView)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
