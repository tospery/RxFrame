//
//  Function.swift
//  Pods
//
//  Created by 杨建祥 on 2020/2/1.
//

import UIKit
import QMUIKit
import RxSwift
import Reachability
import CGFloatLiteral

// MARK: - Dictionary member
public func boolMember(_ params: Dictionary<String, Any>?, _ key: String, _ default: Bool) -> Bool {
    if let value = params?[key] as? Bool {
        return value
    }
    return `default`
}

public func intMember(_ params: Dictionary<String, Any>?, _ key: String, _ default: Int) -> Int {
    if let value = params?[key] as? Int {
        return value
    }
    return `default`
}

public func stringMember(_ params: Dictionary<String, Any>?, _ key: String, _ default: String?) -> String? {
    if let value = params?[key] as? String {
        return value
    }
    return `default`
}

public func arrayMember(_ params: Dictionary<String, Any>?, _ key: String, _ default: Array<Any>?) -> Array<Any>? {
    if let value = params?[key] as? Array<Any> {
        return value
    }
    return `default`
}

// MARK: - Nil value replacement
public func stringDefault(_ string: String?, _ default: String) -> String {
    if let value = string {
        return value;
    }
    return `default`
}

// scale - 高宽比
public func metric(scale: CGFloat) -> CGFloat {
    return flat(UIScreen.main.bounds.size.width * scale)
}

// value - 375标准
public func metric(_ value: CGFloat) -> CGFloat {
    return flat(value / 375.f * UIScreen.width)
}

public func connectedToInternet() -> Observable<Bool> {
    return ReachabilityManager.shared.reach
}

// 区分全面屏（iPhone X 系列）和非全面屏
public func alternate(notched: CGFloat, other: CGFloat) -> CGFloat {
    return (isNotchedScreen ? notched : other)
}

public func alternate(regular: CGFloat, compact: CGFloat) -> CGFloat {
    return (QMUIHelper.isRegularScreen() ? regular : compact)
}
