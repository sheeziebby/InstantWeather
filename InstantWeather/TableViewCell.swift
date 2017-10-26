//
//  TableViewCell.swift
//  InstantWeather
//
//  Created by Rashii Henry on 10/25/17.
//  Copyright © 2017 Rashii Henry. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
//    var weatherIcon : UIImage
//    var weatherDescription : String = "Sunny"
    
    required init?(coder aDecoder: NSCoder) {
//        self.weatherIcon = weatherIcon
//        self.weatherDescription = weatherDescription
        super.init(coder: aDecoder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
