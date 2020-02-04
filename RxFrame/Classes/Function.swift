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

// pixelOne - 1像素
public func pixelOne() -> CGFloat {
    return QMUIHelper.pixelOne()
}

// pixelOne - 1像素
public func connectedToInternet() -> Observable<Bool> {
    return ReachabilityManager.shared.reach
}

//// price
//func price(value: Int, color: UIColor, yuanFont: UIFont, jiaoFont: UIFont) -> NSAttributedString? {
//    let number = NSNumber(value: value)
//    let decimalNumber = NSDecimalNumber(string: "100")
//    var priceNumber = NSDecimalNumber(decimal: number.decimalValue)
//    priceNumber = priceNumber.dividing(by: decimalNumber)
//    
//    let formatter = NumberFormatter()
//    formatter.numberStyle = .none
//    formatter.minimumIntegerDigits = 1
//    formatter.minimumFractionDigits = 0
//    formatter.maximumFractionDigits = 2
//    guard let string = formatter.string(from: priceNumber), !string.isEmpty else { return nil }
//    
//    let priceArray = string.components(separatedBy: ".")
//    var yuanPrice = ""
//    if priceArray.count >= 1 {
//        yuanPrice = priceArray[0]
//    }
//    if yuanPrice.isEmpty {
//        return nil
//    }
//    var jiaoPrice = ""
//    if priceArray.count >= 2 {
//        jiaoPrice = "." + priceArray[1]
//    }
//    
//    let result = NSMutableAttributedString(string: "￥", attributes: [
//        .foregroundColor: color,
//        .font: UIFont.normal(12)
//    ])
//    result.append(NSAttributedString(string: yuanPrice, attributes: [.foregroundColor: color, .font: yuanFont]))
//    if !jiaoPrice.isEmpty {
//        result.append(NSAttributedString(string: jiaoPrice, attributes: [.foregroundColor: color, .font: jiaoFont]))
//    }
//    
//    return result
//}
//
//func rebate(value: String, prefix: String, suffix: String) -> String? {
//    if value.isEmpty {
//        return nil
//    }
//    
//    var result = prefix + String(format: "%.2f", (value as NSString).floatValue)
//    if result.hasSuffix("0") {
//        result.remove(at: result.lastIndex(of: "0")!)
//        if result.hasSuffix("0") {
//            result.remove(at: result.lastIndex(of: "0")!)
//        }
//        if result.hasSuffix(".") {
//            result.remove(at: result.lastIndex(of: ".")!)
//        }
//    }
//    result += suffix
//    
//    return result
//}
