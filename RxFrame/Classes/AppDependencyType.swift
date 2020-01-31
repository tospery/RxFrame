//
//  AppDependencyType.swift
//  Pods
//
//  Created by 杨建祥 on 2020/1/31.
//

import UIKit

public protocol AppDependencyType {
    var window: UIWindow! { get }
    
    func setupFrame()
    func setupVendor()
    func setupAppearance()
    func setupData()
    
    func initialScreen(with window: inout UIWindow?)
    
    func application(_ application: UIApplication, entryDidFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?)
    func application(_ application: UIApplication, leaveDidFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?)
}

extension AppDependencyType {
    
//    var window: UIWindow! {
//        let window = UIWindow(frame: UIScreen.main.bounds)
//        window.backgroundColor = .white
//        return window
//    }
    
    
}
