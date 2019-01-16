//
//  CoordinatorViewController.swift
//  RouterDemo
//
//  Created by nguyentienhoang on 1/9/19.
//  Copyright © 2019 nguyentienhoang. All rights reserved.
//

import UIKit

class CoordinatorViewController: UINavigationController {
    
    var homeVC: HomeVC!
    var loginVC: LoginVC!
    var signupVC: SignupVC!
    var detailVC: DetailVC!
    var forgotPasswordVC: ForgotPasswordVC!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        createVC()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        push(loginVC)
    }
    
    private func createVC() {
        loginVC = LoginVC()
        signupVC = SignupVC()
        forgotPasswordVC = ForgotPasswordVC()
        homeVC = HomeVC()
        detailVC = DetailVC()
        loginVC.delegate = self
        homeVC.delegate = self
    }
}

extension CoordinatorViewController {
    private func push(_ vc: UIViewController) {
        pushViewController(vc, animated: true)
    }
}

extension CoordinatorViewController: LoginVCNavigationDelegate {
    
    func navigateHome() {
        push(homeVC)
    }
    
    func navigateSignup() {
        push(signupVC)
    }
    
    func navigateForgotPassword() {
        push(forgotPasswordVC)
    }
}

extension CoordinatorViewController: HomeVCDelegate {
    func showMore() {
        push(detailVC)
    }
}
