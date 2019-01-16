//
//  RepoListCoordinator.swift
//  RouterDemo
//
//  Created by nguyentienhoang on 1/4/19.
//  Copyright © 2019 nguyentienhoang. All rights reserved.
//

import UIKit

class LoginCoordinator: Coordinator {
   
    fileprivate let navigator: UINavigationController
    private var homeCoordinator: HomeCoordinator?
    /*
     instance of destination coordinator
     */
    
    init(navigator: UINavigationController) {
        self.navigator = navigator
    }
    
    func start() {
        let loginVC = LoginVC()
        loginVC.delegate = self
        navigator.pushViewController(loginVC, animated: true)
    }
}

extension LoginCoordinator: LoginVCNavigationDelegate {
    
    func navigateHome() {
        let homeCoordinator = HomeCoordinator(navigator: navigator)
        homeCoordinator.start()
        self.homeCoordinator = homeCoordinator
    }

    func navigateSignup() {
        print("push signup VC")
        let signupVC = SignupVC()
        navigator.pushViewController(signupVC, animated: true)
    }

    func navigateForgotPassword() {
        print("push forgot password VC")
        let forgotPasswordVC = ForgotPasswordVC()
        navigator.pushViewController(forgotPasswordVC, animated: true)
    }
}

