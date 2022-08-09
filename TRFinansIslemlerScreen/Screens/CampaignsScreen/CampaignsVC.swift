//
//  CampaignsVC.swift
//  TRFinansIslemlerScreen
//
//  Created by BERAT ALTUNTAŞ on 9.08.2022.
//

import UIKit

// MARK: - CampaignsVC
final class CampaignsVC: BaseViewController {
    var viewModel: CampaignsVM! {
        didSet {
            viewModel.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

// MARK: - extension: CampaignsVMDelegate
extension CampaignsVC: CampaignsVMDelegate {
    
}
