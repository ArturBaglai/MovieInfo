import UIKit

class Coordinator {
    private let rootViewController: UIViewController
    private let navigationViewController = UINavigationController()
    
    init(rootViewController: UIViewController) {
        self.rootViewController = rootViewController
        self.rootViewController.present(navigationViewController, animated: true)
    }
    func start() {
        let moviesViewController = MoviesViewController()
        self.navigationViewController.pushViewController(moviesViewController, animated: true)
    }
    
}
