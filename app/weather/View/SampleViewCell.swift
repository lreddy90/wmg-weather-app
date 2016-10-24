//
//  SampleViewCell.swift
//  weather
//
//  Created by Richard Dancsi on 24/10/2016.
//  Copyright © 2016 wimagguc. All rights reserved.
//

import UIKit

class SampleViewCell : UICollectionViewCell {
    
    @IBOutlet weak var weatherMainLabel: UILabel!
    @IBOutlet weak var weatherDescriptionLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var minTemperatureLabel: UILabel!
    @IBOutlet weak var maxTemperatureLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    
    var weatherSample: WeatherSample?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setWeatherSample(weatherSample: WeatherSample) {
        self.weatherSample = weatherSample
        
        weatherMainLabel.text = weatherSample.weatherMain
        weatherDescriptionLabel.text = weatherSample.weatherDescription
        
        if (weatherSample.temperatureInCelsius() != nil) {
            temperatureLabel.text = "\(weatherSample.temperatureInCelsius()!) °C"
        }
        if (weatherSample.minTemperatureInCelsius() != nil) {
            minTemperatureLabel.text = "\(weatherSample.minTemperatureInCelsius()!) °C"
        }
        if (weatherSample.maxTemperatureInCelsius() != nil) {
            maxTemperatureLabel.text = "\(weatherSample.maxTemperatureInCelsius()!) °C"
        }
        
        hourLabel.text = weatherSample.dateString(format: "HH:mm")
    }
    
}
