//
//  CustomUITabbar.swift
//  TRFinansIslemlerScreen
//
//  Created by BERAT ALTUNTAŞ on 9.08.2022.
//

import Foundation
import UIKit

@IBDesignable
class CustomUITabbar: UITabBar {
    @IBInspectable
    var roundCorner: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = roundCorner
        }
    }
}
