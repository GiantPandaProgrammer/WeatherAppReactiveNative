import UIKit
import React

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        // Fetch the root view controller from the legacy AppDelegate window or initialize your factory
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let rootViewController = appDelegate?.window?.rootViewController ?? UIViewController()

        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = rootViewController
        self.window = window
        window.makeKeyAndVisible()
    }
}
