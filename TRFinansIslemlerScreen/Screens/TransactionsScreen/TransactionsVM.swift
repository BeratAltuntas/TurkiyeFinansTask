//
//  TransactionsVM.swift
//  TRFinansIslemlerScreen
//
//  Created by BERAT ALTUNTAŞ on 9.08.2022.
//

import Foundation

// MARK: - TransactionsVMProtocol
protocol TransactionsVMProtocol {
    var delegate: TransactionVMDelegate? { get }
}

// MARK: - TransactionVMDelegate
protocol TransactionVMDelegate: AnyObject {
    
}

// MARK: - TransactionVM
final class TransactionVM {
    weak var delegate: TransactionVMDelegate?
}

// MARK: - extension: TransactionsVMProtocol
extension TransactionVM: TransactionsVMProtocol {
    
}
