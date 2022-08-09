//
//  HomeScreenViewModel.swift
//  TRFinansIslemlerScreen
//
//  Created by BERAT ALTUNTAŞ on 9.08.2022.
//

import Foundation

// MARK: - HomeScreenVMProtocol
protocol HomeVMProtocol {
    var delegate: HomeVMDelegate? { get }
}

// MARK: - HomeScreenVMDelegate
protocol HomeVMDelegate: AnyObject {
    
}

// MARK: - HomeScreenVM
final class HomeVM {
    weak var delegate: HomeVMDelegate?
}

// MARK: - extension: HomeScreenVMProtocol
extension HomeVM: HomeVMProtocol {
    
}
