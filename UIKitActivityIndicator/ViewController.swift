//
//  ViewController.swift
//  UIKitActivityIndicator
//
//  Created by ProgrammingWithSwift on 2019/12/22.
//  Copyright © 2019 ProgrammingWithSwift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
override func viewDidLoad() {
    super.viewDidLoad()
    
    // 1
    let indicatorView = self.activityIndicator(style: .medium,
                                               center: self.view.center)
    
    // 2
    self.view.addSubview(indicatorView)
    
    // 3
    indicatorView.startAnimating()
}
    
    // 1
    private func activityIndicator(style: UIActivityIndicatorView.Style = .medium,
                                   frame: CGRect? = nil,
                                   center: CGPoint? = nil) -> UIActivityIndicatorView {
        
        // 2
        let activityIndicatorView = UIActivityIndicatorView(style: style)
        
        // 3
        if let frame = frame {
            activityIndicatorView.frame = frame
        }
        
        // 4
        if let center = center {
            activityIndicatorView.center = center
        }
        
        // 5
        return activityIndicatorView
    }
}
