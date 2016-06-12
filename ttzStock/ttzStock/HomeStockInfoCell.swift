//
//  HomeStockInfoCell.swift
//  ttzStock
//
//  Created by shunweiwuxian on 16/6/12.
//  Copyright © 2016年 ttz. All rights reserved.
//

import UIKit

class HomeStockInfoCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var codeLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var increPerLabel: UILabel!
    
    var stockModel : HomeStock?{
        didSet{
            nameLabel.text = stockModel!.name
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
//    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
