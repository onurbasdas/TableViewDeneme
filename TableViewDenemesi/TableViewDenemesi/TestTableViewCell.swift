//
//  TestTableViewCell.swift
//  TableViewDenemesi
//
//  Created by Onur Başdaş on 2.09.2021.
//

import UIKit

class TestTableViewCell: UITableViewCell {
    
    static let identifier = "TestTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "TestTableViewCell", bundle: nil)
    }
    
    @IBOutlet var backView: UIView!
    @IBOutlet var imageRick: UIImageView!
    @IBOutlet var nameRick: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
