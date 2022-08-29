//
//  SceneDelegate.swift
//  iOSTrainning
//
//  Created by justin on 2022/8/29.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let scene = (scene as? UIWindowScene) else { return }

        let window = UIWindow(windowScene: scene)
        window.rootViewController = UINavigationController(rootViewController: MainTableViewController())
        window.makeKeyAndVisible()

        self.window = window
    }
}

