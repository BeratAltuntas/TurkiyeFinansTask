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
        // Do any additional setup after loading the view.
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
}

