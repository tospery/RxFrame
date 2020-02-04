//
//  UIDeviceExt.swift
//  Pods
//
//  Created by 杨建祥 on 2020/2/3.
//

import UIKit
import KeychainAccess
import FCUUID

public extension UIDevice {
    
    struct KeychainKey {
        static let uuid = "uuid"
    }
    
    var uuid: String {
        let key = KeychainKey.uuid
        let service = Bundle.main.bundleIdentifier!
        let accessGroup = UIApplication.shared.team + ".shared"
        let keychain = Keychain(service: service, accessGroup: accessGroup)
        
        var uuid = keychain[key]
        if uuid?.isEmpty ?? true {
            uuid = FCUUID.uuidForDevice()
            keychain[key] = uuid
        }
        
        return uuid ?? ""
    }
    
}
