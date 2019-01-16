//
//  HomeVC.swift
//  RouterDemo
//
//  Created by nguyentienhoang on 1/3/19.
//  Copyright © 2019 nguyentienhoang. All rights reserved.
//

import UIKit

protocol HomeVCDelegate: class {
    func showMore()
}

class HomeVC: UIViewController {
    
    let homeView = HomeView()
    weak var delegate: HomeVCDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Home"
        addView()
    }
    
    private func addView() {
        view.addSubview(homeView)
        homeView.frame = view.frame
        homeView.btn.addTarget(self, action: #selector(didTap), for: .touchUpInside)
    }
    
    @objc func didTap() {
        delegate?.showMore()
    }

}
