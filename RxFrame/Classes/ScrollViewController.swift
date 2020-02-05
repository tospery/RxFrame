//
//  ScrollViewController.swift
//  Pods
//
//  Created by 杨建祥 on 2020/1/31.
//

import UIKit
import URLNavigator

open class ScrollViewController: BaseViewController {
    
    public var scrollView: UIScrollView!
    
    // MARK: - Init
    public override init(_ navigator: NavigatorType, _ reactor: BaseViewReactor) {
        super.init(navigator, reactor)
        if self is TableViewController {
            self.scrollView = UITableView(frame: .zero)
        } else if self is CollectionViewController {
            self.scrollView = UICollectionView(frame: .zero, collectionViewLayout: (self as! CollectionViewController).layout)
        } else {
            self.scrollView = UIScrollView(frame: .zero)
        }
        //        self.scrollView.emptyDataSetSource = self
        //        self.scrollView.emptyDataSetDelegate = self
        if #available(iOS 11.0, *) {
            self.scrollView.contentInsetAdjustmentBehavior = .never
        }
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - View
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.scrollView)
        self.scrollView.frame = self.contentFrame
        
//        if (![self isKindOfClass:BZMTableViewController.class] &&
//            ![self isKindOfClass:BZMCollectionViewController.class] &&
//            ![self isKindOfClass:BZMWebViewController.class]) {
//            UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, self.contentTop, self.view.qmui_width, self.view.qmui_height - self.contentTop - self.contentBottom)];
//            scrollView.bzm_contentView = [[UIView alloc] init];
//            scrollView.bzm_contentView.dk_backgroundColorPicker = DKColorPickerWithKey(BG);
//            scrollView.contentSize = CGSizeMake(scrollView.qmui_width, scrollView.qmui_height + PixelOne);
//            scrollView.dk_backgroundColorPicker = DKColorPickerWithKey(BG);
//            scrollView.delegate = self;
//            scrollView.emptyDataSetSource = self.viewModel;
//            scrollView.emptyDataSetDelegate = self;
//            if (@available(iOS 11.0, *)) {
//                scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
//            }
//            [self.view addSubview:scrollView];
//            self.scrollView = scrollView;
//        }
        
//        if !(self is TableViewController || self is CollectionViewController || self is WebViewController) {
//            let scrollView = UIScrollView(frame: self.contentFrame)
//            scrollView.contentView = UIView()
//            scrollView.contentSize = CGSize(width: scrollView.width, height: scrollView.height + pixelOne)
//            scrollView.delegate = self
//            if #available(iOS 11.0, *) {
//                scrollView.contentInsetAdjustmentBehavior = .never
//            }
//            self.scrollView = scrollView
//            self.view.addSubview(self.scrollView)
//        }
        
        // scrollView.contentSize = CGSize(width: scrollView.width, height: scrollView.height + pixelOne)
    }
    
    public override func bind(reactor: BaseViewReactor) {
        super.bind(reactor: reactor)
        // Bind
        self.scrollView.rx
            .setDelegate(self)
            .disposed(by: self.disposeBag)
    }
    
    // MARK: - Property
    // MARK: - Method
    // MARK: - super
    // MARK: - public
    // MARK: - private
    // MARK: - Delegate
    // MARK: - Class
    
}


extension ScrollViewController: UIScrollViewDelegate {
    
}
