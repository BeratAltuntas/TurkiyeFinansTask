//
//  TabBarVC.swift
//  TRFinansIslemlerScreen
//
//  Created by BERAT ALTUNTAŞ on 9.08.2022.
//

import UIKit

// MARK: - HomeScreenVC
final class TabBarVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        RoundCorners()
    }
    
    private func SetupViewControllers() {
        guard let viewControllers = viewControllers else { return }
        for viewController in viewControllers {
            var childViewController: UIViewController?
            if let navigationController = viewController as? UINavigationController {
                childViewController = navigationController.viewControllers.first
            } else {
                childViewController = viewController
            }
            
            switch childViewController {
            case let viewController as HomeVC:
                let viewModel = HomeVM()
                viewController.viewModel = viewModel
            case let viewController as AccountCardVC:
                let viewModel = AccountCardVM()
                viewController.viewModel = viewModel
            case let viewController as TransactionVC:
                let viewModel = TransactionVM()
                viewController.viewModel = viewModel
            case let viewController as ApplicationsVC:
                let viewModel = ApplicationsVM()
                viewController.viewModel = viewModel
            default:
                break
            }
        }
    }
    
    private func RoundCorners() {
        let layer = CAShapeLayer()
        layer.path = UIBezierPath(roundedRect: CGRect(x: self.tabBar.bounds.minX, y: self.tabBar.bounds.minY, width: self.tabBar.bounds.width, height: self.tabBar.bounds.height + 60), cornerRadius: (self.tabBar.frame.width/30)).cgPath
        layer.isHidden = false
        layer.masksToBounds = false
        self.tabBar.backgroundColor = .white
        
        self.tabBar.layer.insertSublayer(layer, at: 0)
    }
}

