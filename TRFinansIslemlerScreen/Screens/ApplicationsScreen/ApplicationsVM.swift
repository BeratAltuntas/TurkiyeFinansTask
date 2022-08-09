//
//  ApplicationsVM.swift
//  TRFinansIslemlerScreen
//
//  Created by BERAT ALTUNTAŞ on 9.08.2022.
//

import Foundation

// MARK: - ApplicationsVMProtocol
protocol ApplicationsVMProtocol {
    var delegate: ApplicationsVMDelegate? { get }
}

// MARK: - ApplicationsVMDelegate
protocol ApplicationsVMDelegate: AnyObject{
    
}

// MARK: - ApplicationsVM
final class ApplicationsVM {
    weak var delegate: ApplicationsVMDelegate?
}

// MARK: - extension: ApplicationsVMProtocol
extension ApplicationsVM: ApplicationsVMProtocol {
    
}
