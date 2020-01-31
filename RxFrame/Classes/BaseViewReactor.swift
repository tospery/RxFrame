//
//  BaseViewReactor.swift
//  Pods
//
//  Created by 杨建祥 on 2020/1/31.
//

import UIKit

open class BaseViewReactor: ReactorType {
    
    let params: Dictionary<String, Any>?
    // let provider: ServiceProviderType
    weak var viewController : BaseViewController!
    
    required public init(params: Dictionary<String, Any>?) {
        self.params = params
//        self.provider = provider
//        self.params = params ?? [:]
//        self.title = stringMember(self.params, Constant.Parameter.title, nil)
//        self.keyword = stringMember(self.params, Constant.Parameter.keyword, nil)
//        self.statusBarStyle = intMember(self.params, Constant.Parameter.statusBarStyle, themeService.attrs.statusBarStyle.rawValue) == 0 ? .default: .lightContent
//        // self.backgroundColor = self.params[Constant.ViewModel.backgroundColor] as? UIColor ?? themeService.attrs.primaryDark
    }
    
}
