//
//  ModelType.swift
//  Pods
//
//  Created by 杨建祥 on 2020/1/31.
//

import UIKit
import RxSwift
import ObjectMapper
import Cache

// MARK: - 标识协议
protocol Identifiable {
    var id: String? { get }
}

// MARK: - 模型协议
protocol ModelType: Identifiable, Mappable {
    init()
}
