//
//  CampaignsVM.swift
//  TRFinansIslemlerScreen
//
//  Created by BERAT ALTUNTAŞ on 9.08.2022.
//

import Foundation

// MARK: - CampaignsVMProtocol
protocol CampaignsVMProtocol {
    var delegate: CampaignsVMDelegate? { get }
}

// MARK: - CampaignsVMDelegate
protocol CampaignsVMDelegate: AnyObject {
    
}

// MARK: - CampaignsVM
final class CampaignsVM {
    weak var delegate: CampaignsVMDelegate?
}

// MARK: - extension: CampaignsVMProtocol
extension CampaignsVM: CampaignsVMProtocol {
    
}
