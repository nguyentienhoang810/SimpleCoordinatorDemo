//
//  homeView.swift
//  RouterDemo
//
//  Created by nguyentienhoang on 1/9/19.
//  Copyright © 2019 nguyentienhoang. All rights reserved.
//

import UIKit

class HomeView: UIView {
    
    let btn = CustomButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
    }
    
    private func setupLayout() {
        btn.addTitle("Show More")
        addSubview(btn)
        btn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            btn.heightAnchor.constraint(equalToConstant: 30),
            btn.widthAnchor.constraint(equalToConstant: 100),
            btn.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            btn.centerYAnchor.constraint(equalTo: self.centerYAnchor)
            ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
