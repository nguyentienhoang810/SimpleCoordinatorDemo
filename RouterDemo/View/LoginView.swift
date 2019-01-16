//
//  LoginView.swift
//  RouterDemo
//
//  Created by nguyentienhoang on 1/2/19.
//  Copyright © 2019 nguyentienhoang. All rights reserved.
//

import UIKit

class LoginView: UIView {
    
    /*
     Login > Home Screen
     Sign Up > Sign Up Screen
     Forgot Password (?) > Forgot Password Screen
     */
    private let emailTF = UITextField()
    private let passwordTF = UITextField()
    let loginBtn = CustomButton()
    let signupBtn = CustomButton()
    let forgotPasswordBtn = CustomButton()
    private var stackView = UIStackView()
    private let loginVM = LoginVM()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    fileprivate func setupLayout() {
        loginBtn.addTitle("Login")
        signupBtn.addTitle("Signup")
        forgotPasswordBtn.addTitle("forgot password")
        stackView = UIStackView(arrangedSubviews: [loginBtn, signupBtn, forgotPasswordBtn])
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.distribution = .fillEqually
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.heightAnchor.constraint(equalToConstant: 300),
            stackView.widthAnchor.constraint(equalToConstant: 100),
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
