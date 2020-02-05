//
//  BaseCollectionItem.swift
//  Pods
//
//  Created by 杨建祥 on 2020/1/31.
//

import UIKit

open class BaseCollectionItem: ReactorType {

    let model: ModelType
    weak var cell : BaseCollectionCell?
    
    required public init(_ model: ModelType) {
        self.model = model
    }
    
}
