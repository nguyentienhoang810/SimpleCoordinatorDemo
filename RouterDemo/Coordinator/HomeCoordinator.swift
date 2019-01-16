//
//  HomeCoordinator.swift
//  RouterDemo
//
//  Created by nguyentienhoang on 1/4/19.
//  Copyright © 2019 nguyentienhoang. All rights reserved.
//

import UIKit

class HomeCoordinator: Coordinator {
    
    private var homeVC: HomeVC?
    private let navigator: UINavigationController
    
    init(navigator: UINavigationController) {
        self.navigator = navigator
    }
    
    func start() {
        let homeVC = HomeVC()
        navigator.pushViewController(homeVC, animated: true)
        homeVC.delegate = self
        self.homeVC = homeVC
    }
}

extension HomeCoordinator: HomeVCDelegate {
    func showMore() {
        print("excute show more")
    }
}
