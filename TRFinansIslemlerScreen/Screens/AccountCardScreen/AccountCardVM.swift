//
//  AccountCardVM.swift
//  TRFinansIslemlerScreen
//
//  Created by BERAT ALTUNTAŞ on 9.08.2022.
//

import Foundation

// MARK: - AccountCardVMProtocol
protocol AccountCardVMProtocol {
    var delegate: AccountCardVMDelegate? { get }
}

// MARK: - AccountCardVMDelegate
protocol AccountCardVMDelegate: AnyObject {
    
}

// MARK: - AccountCardVM
final class AccountCardVM {
    weak var delegate: AccountCardVMDelegate?
}

// MARK: - extension: AccountCardVMProtocol
extension AccountCardVM: AccountCardVMProtocol {
    
}
