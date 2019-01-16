//
//  ForgotPasswordCoordinator.swift
//  RouterDemo
//
//  Created by nguyentienhoang on 1/4/19.
//  Copyright © 2019 nguyentienhoang. All rights reserved.
//

import UIKit

class ForgotPasswordCoordinator: Coordinator {
    
    private var forgotPasswordVC: ForgotPasswordVC?
    private let navigator: UINavigationController
    
    init(navigator: UINavigationController) {
        self.navigator = navigator
    }
    
    func start() {
        let vc = ForgotPasswordVC()
        navigator.pushViewController(vc, animated: true)
    }
}
