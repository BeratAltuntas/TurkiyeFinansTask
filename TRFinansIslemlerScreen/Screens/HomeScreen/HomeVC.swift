//
//  HomeScreenVC.swift
//  TRFinansIslemlerScreen
//
//  Created by BERAT ALTUNTAŞ on 9.08.2022.
//

import UIKit

// MARK: - HomeScreenVC
final class HomeVC: BaseViewController {
    var viewModel: HomeVM! {
        didSet {
            viewModel.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - extension: HomeScreenVMDelegate
extension HomeVC: HomeVMDelegate {
    
}
