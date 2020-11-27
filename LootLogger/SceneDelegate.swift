//
//  SceneDelegate.swift
//  LootLogger
//
//  Created by User on 20.11.2020.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        print(#function)
        print(Bundle.main.bundlePath)
        guard let _ = (scene as? UIWindowScene) else { return }
        
        //create an ImageStore
        let imageStore = ImageStore()
        // create an ItemStore
        let itemStore = ItemStore()
        // access the ItemsViewController and set its item store
        let navController = window?.rootViewController as! UINavigationController
        let itemsController = navController.topViewController as! ItemsViewController
        itemsController.itemStore = itemStore
        itemsController.imageStore = imageStore
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        print(#function)
    }
    func sceneDidEnterBackground(_ scene: UIScene) {
        print(#function)
    }
    func sceneWillEnterForeground(_ scene: UIScene) {
        print(#function)
    }
    func sceneDidBecomeActive(_ scene: UIScene) {
        print(#function)
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }


}

