//
//  TransactionsTableViewCell.swift
//  TRFinansIslemlerScreen
//
//  Created by BERAT ALTUNTAŞ on 10.08.2022.
//

import UIKit

class TransactionsTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
