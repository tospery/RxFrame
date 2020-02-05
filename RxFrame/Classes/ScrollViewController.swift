//
//  ScrollViewController.swift
//  Pods
//
//  Created by 杨建祥 on 2020/1/31.
//

import UIKit

open class ScrollViewController: BaseViewController {
    
    public var scrollView: UIScrollView!
    
    // MARK: - Init
    // MARK: - View
    open override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        if !(self is TableViewController || self is CollectionViewController || self is WebViewController) {
            let scrollView = UIScrollView(frame: self.contentFrame)
            scrollView.contentView = UIView()
            scrollView.contentSize = CGSize(width: scrollView.width, height: scrollView.height + pixelOne)
            scrollView.delegate = self
            if #available(iOS 11.0, *) {
                scrollView.contentInsetAdjustmentBehavior = .never
            }
            self.scrollView = scrollView
            self.view.addSubview(self.scrollView)
        }
        
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
