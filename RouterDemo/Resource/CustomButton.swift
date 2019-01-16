//
//  CustomButton.swift
//  RouterDemo
//
//  Created by nguyentienhoang on 1/2/19.
//  Copyright © 2019 nguyentienhoang. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    private var title: String?
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
    }
    
    func addTitle(_ title: String) {
        self.setTitle(title, for: .normal)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupLayout() {
        backgroundColor = .orange
    }
}
