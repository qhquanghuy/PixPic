//
//  AppearanceApplyingStrategy.swift
//  PixPic
//
//  Created by anna on 3/11/16.
//  Copyright © 2016 Yalantis. All rights reserved.
//

class AppearanceApplyingStrategy {

    func apply(_ appearance: Appearance, toNavigationController navigationController: UINavigationController, navigationItem: UINavigationItem?, animated: Bool) {
        let navigationBar = navigationController.navigationBar

        if !navigationController.isNavigationBarHidden {
            navigationBar.barTintColor = appearance.navigationBar.barTintColor
            navigationBar.isTranslucent = appearance.navigationBar.translucent
            navigationBar.titleTextAttributes = appearance.navigationBar.titleTextAttributes
            navigationBar.tintColor = appearance.navigationBar.tintColor
            navigationBar.topItem!.title = appearance.navigationBar.topItemTitle

            navigationItem?.title = appearance.title
        }
    }

}
