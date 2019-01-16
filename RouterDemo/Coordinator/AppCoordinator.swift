//
//  AppCoordinator.swift
//  RouterDemo
//
//  Created by nguyentienhoang on 1/4/19.
//  Copyright © 2019 nguyentienhoang. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator {
    
    private let window: UIWindow
    private var loginCoordinator: LoginCoordinator?
    private let navigationController: UINavigationController
    
    private let loginVC = LoginVC()
    
    init(window: UIWindow) {
        self.window = window
        let navigationController = UINavigationController()
        self.loginCoordinator = LoginCoordinator(navigator: navigationController)
        self.navigationController = navigationController
    }
    
    func start() {
        window.rootViewController = self.navigationController
        loginCoordinator?.start()
        window.makeKeyAndVisible()
    }
}
