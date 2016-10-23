//
//  DailyWeatherCell.swift
//  weather
//
//  Created by Richard Dancsi on 24/10/2016.
//  Copyright © 2016 wimagguc. All rights reserved.
//

import UIKit

class DailyWeatherCell : UITableViewCell {
    
    @IBOutlet weak var button: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func addItemToCell(item: String) {
        button.setTitle(item, for: .normal)
    }
    
}
