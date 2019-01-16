//
//  ViewController.swift
//  RouterDemo
//
//  Created by nguyentienhoang on 1/1/19.
//  Copyright © 2019 nguyentienhoang. All rights reserved.
//

import UIKit

protocol LoginVCNavigationDelegate: class {
    func navigateHome()
    func navigateSignup()
    func navigateForgotPassword()
}

class LoginVC: UIViewController {
    
    let loginView = LoginView()
    let loginVM = LoginVM()
    var delegate: LoginVCNavigationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addView()
        title = "Login"
    }
    
    
    private func addView() {
        view.addSubview(loginView)
        loginView.loginBtn.addTarget(self, action: #selector(didTapLogin(_:)), for: .touchUpInside)
        loginView.signupBtn.addTarget(self, action: #selector(didTapSignup(_:)), for: .touchUpInside)
        loginView.forgotPasswordBtn.addTarget(self, action: #selector(didTapForgotPassword(_:)), for: .touchUpInside)
        loginView.backgroundColor = .white
        loginView.frame = view.frame
    }
 
    @objc func didTapLogin(_ sender: UIButton) {
        delegate?.navigateHome()
    }
    
    @objc func didTapSignup(_ sender: UIButton) {
        delegate?.navigateSignup()
    }
    
    @objc func didTapForgotPassword(_ sender: UIButton) {
        delegate?.navigateForgotPassword()
    }
}
