//
//  CustomUITabbar.swift
//  TRFinansIslemlerScreen
//
//  Created by BERAT ALTUNTAŞ on 11.08.2022.
//

import Foundation
import UIKit

@IBDesignable
class CustomUITabbar: UITabBar {
    
    @IBInspectable var isCornerRounded: Bool = false {
        didSet {
            if isCornerRounded {
                addShape()
            }
        }
    }
    
    @IBInspectable var color: UIColor?
    @IBInspectable var radii: CGFloat = 45.0
    
    private var shapeLayer: CALayer?
    
    
    
    override func draw(_ rect: CGRect) {
        addShape()
    }
    
    private func addShape() {
        self.layer.cornerRadius = 80
        let shapeLayer = CAShapeLayer()
        self.layer.cornerRadius = 80
        shapeLayer.path = createPath()
        shapeLayer.strokeColor = UIColor.gray.withAlphaComponent(0.1).cgColor
        shapeLayer.fillColor = UIColor.black.cgColor
        
        if let oldShapeLayer = self.shapeLayer {
            layer.replaceSublayer(oldShapeLayer, with: shapeLayer)
        } else {
            layer.insertSublayer(shapeLayer, at: 0)
        }
        
        self.shapeLayer = shapeLayer
    }
    
    private func createPath() -> CGPath {
        let path = UIBezierPath(
            roundedRect: bounds,
            byRoundingCorners: [.topLeft, .topRight],
            cornerRadii: CGSize(width: radii, height: 0.0))
        
        return path.cgPath
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.isTranslucent = true
        
        self.layer.cornerRadius = 80
        self.items?.forEach({ $0.titlePositionAdjustment = UIOffset(horizontal: 0.0, vertical: -5.0) })
        
        
    }
}
