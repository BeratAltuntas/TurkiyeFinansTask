//
//  TransactionVC.swift
//  TRFinansIslemlerScreen
//
//  Created by BERAT ALTUNTAŞ on 9.08.2022.
//

import UIKit

// MARK: - TransactionVC
final class TransactionVC: BaseViewController {
    var viewModel: TransactionVM! {
        didSet {
            viewModel.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
}

// MARK: - extension: TransactionVMDelegate
extension TransactionVC: TransactionVMDelegate {
    
}
