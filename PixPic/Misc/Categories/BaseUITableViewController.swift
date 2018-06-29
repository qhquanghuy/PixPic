//
//  BaseUITableViewController.swift
//  PixPic
//
//  Created by AndrewPetrov on 6/20/16.
//  Copyright © 2016 Yalantis. All rights reserved.
//

import Foundation

class BaseUITableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let leftButton = UIBarButtonItem(
            image: UIImage.appBackButton,
            style: .plain,
            target: self,
            action: #selector(navigateBack)
        )
        navigationItem.leftBarButtonItem = leftButton
    }

    @objc fileprivate func navigateBack() {
        navigationController?.popViewController(animated: true)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        if let subviews = navigationController?.navigationBar.subviews {
            for view in subviews {
                view.isExclusiveTouch = true
            }
        }
    }

}
