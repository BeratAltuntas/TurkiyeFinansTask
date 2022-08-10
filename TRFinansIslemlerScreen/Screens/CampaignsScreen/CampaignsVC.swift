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
        title = "Kampanya"
        
    }
}

// MARK: - extension: CampaignsVMDelegate
extension CampaignsVC: CampaignsVMDelegate {
    
}
