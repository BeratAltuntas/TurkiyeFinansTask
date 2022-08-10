//
//  BadgeButtonItem.swift
//  TRFinansIslemlerScreen
//
//  Created by BERAT ALTUNTAŞ on 10.08.2022.
//

import Foundation
import UIKit

class CustomBarButtonItem: UIBarButtonItem {

    private var badgeValue: Bool? {
        didSet {
            if let value = badgeValue,
                value {
                lblBadge.isHidden = false
            } else {
                lblBadge.isHidden = true
            }
        }
    }

    var tapAction: (() -> Void)?

    private let filterBtn = UIButton()
    private let lblBadge = UILabel()

    override init() {
        super.init()
        setup()
    }

    init(with image: UIImage?, isBellOn: Bool) {
        super.init()
        setup(image: image, isBellOn: isBellOn)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    private func setup(image: UIImage? = nil, isBellOn: Bool = false) {

        self.filterBtn.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        self.filterBtn.setImage(image, for: .normal)
        self.filterBtn.tintColor = .black
        self.filterBtn.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)

        self.lblBadge.frame = CGRect(x: 20, y: 0, width: 15, height: 15)
        self.lblBadge.backgroundColor = .red
        self.lblBadge.clipsToBounds = true
        self.lblBadge.layer.cornerRadius = 7
        self.lblBadge.minimumScaleFactor = 0.1
        self.lblBadge.adjustsFontSizeToFitWidth = true
        self.filterBtn.addSubview(lblBadge)
        self.customView = filterBtn
        badgeValue = isBellOn
    }

    @objc func buttonPressed() {
        if let action = tapAction {
            action()
        }
    }

}
