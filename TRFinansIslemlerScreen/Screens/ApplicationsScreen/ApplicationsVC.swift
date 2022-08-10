//
//  ApplicationsVC.swift
//  TRFinansIslemlerScreen
//
//  Created by BERAT ALTUNTAŞ on 9.08.2022.
//

import UIKit

// MARK: - ApplicationsVC
final class ApplicationsVC: BaseViewController {
    var viewModel: ApplicationsVM! {
        didSet {
            viewModel.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Başvurular"
    }

}

// MARK: - extension: ApplicationsVMDelegate
extension ApplicationsVC: ApplicationsVMDelegate {
    
}
