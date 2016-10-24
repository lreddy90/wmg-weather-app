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
    
    var collection: [[WeatherSample]] = []
    
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
        tableView.rowHeight = 256
        let nibName = UINib(nibName: "DailyWeatherCell", bundle:nil)
        tableView.register(nibName, forCellReuseIdentifier: "DailyWeatherCell")
        
        let w1 = WeatherSample()
        w1.weatherMain = "Cloud"
        let w2 = WeatherSample()
        w2.weatherMain = "Rain"
        let w3 = WeatherSample()
        w3.weatherMain = "Something"
        let w4 = WeatherSample()
        w4.weatherMain = "Else"
        let w5 = WeatherSample()
        w5.weatherMain = "Entirely"
        let w6 = WeatherSample()
        w6.weatherMain = "This"
        
        collection = [[w1, w2], [w3, w4, w5], [w6]]
        tableView.reloadData()
    }
    
    /**
     UITableView
     */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return collection.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DailyWeatherCell", for: indexPath) as! DailyWeatherCell
        
        let weatherSamples = collection[indexPath.row]
        cell.setWeatherSamples(weatherSamples: weatherSamples)
        
        return cell
    }
    
}
