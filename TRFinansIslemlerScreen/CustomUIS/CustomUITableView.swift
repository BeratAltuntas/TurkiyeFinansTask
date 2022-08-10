//
//  CustomUITableView.swift
//  TRFinansIslemlerScreen
//
//  Created by BERAT ALTUNTAŞ on 10.08.2022.
//

import Foundation
import UIKit

@IBDesignable
class CustomUITableView: UITableView {
    @IBInspectable
    var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float = 0 {
        didSet {
            self.layer.shadowColor = UIColor.red.cgColor
            self.layer.shadowOffset = CGSize(width: 3.0, height: 8.0)
            self.layer.shadowOpacity = 23
            self.layer.shadowRadius = 33
        }
    }
    
    func setShadow() {
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.35).cgColor
        self.layer.shadowOffset = CGSize(width: 1.0, height: 3.0)
        self.layer.shadowOpacity = 1.5
        self.layer.shadowRadius = 1.5
    }
    
    func setShadow(shadowColor: UIColor, shadowOffset: CGSize, shadowOpacity: Float, shadowRadius: CGFloat) {
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowRadius = shadowRadius
    }
}
