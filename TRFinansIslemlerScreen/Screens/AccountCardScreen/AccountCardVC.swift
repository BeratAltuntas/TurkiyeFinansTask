//
//  AccountCardVC.swift
//  TRFinansIslemlerScreen
//
//  Created by BERAT ALTUNTAŞ on 9.08.2022.
//

import UIKit

// MARK: - AccountCardVC
final class AccountCardVC: BaseViewController {
    var viewModel: AccountCardVM! {
        didSet {
            viewModel.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

// MARK: - extension: AccountCardVMDelegate
extension AccountCardVC: AccountCardVMDelegate {
    
}
