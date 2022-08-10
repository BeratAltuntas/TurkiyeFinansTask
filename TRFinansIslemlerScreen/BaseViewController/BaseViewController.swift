//
//  BaseVC.swift
//  TRFinansIslemlerScreen
//
//  Created by BERAT ALTUNTAŞ on 9.08.2022.
//

import UIKit

// MARK: - BaseViewController
class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let logo = UIImage(named: VCConstants.turkiyeFinansLogo)
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
    }
}
