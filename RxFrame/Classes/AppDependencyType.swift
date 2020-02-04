//
//  AppDependencyType.swift
//  Pods
//
//  Created by 杨建祥 on 2020/2/3.
//

import UIKit
import URLNavigator

public protocol AppDependencyType {
    
    var window: UIWindow! { get }
    
    var navigator: NavigatorType { get }
    var provider: ProviderType { get }
    
    func initialScreen(with window: inout UIWindow?)
    
    func application(_ application: UIApplication, entryDidFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?)
    func application(_ application: UIApplication, leaveDidFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?)
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool
}
