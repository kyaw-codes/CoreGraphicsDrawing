//
//  ViewController.swift
//  CoreGraphicsDrawing
//
//  Created by Kyaw Zay Ya Lin Tun on 5/15/22.
//

import UIKit

class ViewController: UIViewController {

    // Make custom view
    let customView = CustomView()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupLayout()
    }

    fileprivate func setupView() {
        self.view.backgroundColor = .darkGray
        customView.backgroundColor = UIColor.white
    }

    fileprivate func setupLayout() {
        self.view.addSubview(customView)
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        customView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        customView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8).isActive = true
        customView.heightAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8).isActive = true
    }

}

