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
    
    var shadow: CGFloat = 0 {
        didSet {
            //self.layer.sha
        }
    }
}
