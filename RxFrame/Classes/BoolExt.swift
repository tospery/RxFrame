//
//  BoolExt.swift
//  Pods
//
//  Created by 杨建祥 on 2020/2/3.
//

import UIKit

public protocol BooleanType {
    var boolValue: Bool { get }
}

extension Bool: BooleanType {
    public var boolValue: Bool { return self }
}
