//
//  WeatherTableView.swift
//  weather
//
//  Created by Richard Dancsi on 24/10/2016.
//  Copyright © 2016 wimagguc. All rights reserved.
//

import UIKit

class WeatherTableView : UIView, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!    
    
    var collection: [String]? = []
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setup()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    func setup() {
        tableView.rowHeight = 128
        let nibName = UINib(nibName: "DailyWeatherCell", bundle:nil)
        tableView.register(nibName, forCellReuseIdentifier: "DailyWeatherCell")
        
        collection = ["Hello", "Nothing", "To", "See", "Here", "(Yet)"]
        tableView.reloadData()
    }
    
    /**
     UITableView
     */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (collection == nil) {
            return 0
        }
        return collection!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DailyWeatherCell", for: indexPath) as! DailyWeatherCell
        
        if let title = collection?[indexPath.row] {
            cell.addItemToCell(item: title)
        }
        
        return cell
    }
    
}
