//
//  State.swift
//  weather
//
//  Created by Richard Dancsi on 24/10/2016.
//  Copyright © 2016 wimagguc. All rights reserved.
//

import Foundation

class State {
    
    static let sharedInstance = State()
    
    var weatherSamples: [WeatherSample]?

    func groupedWeatherSamples() -> [[WeatherSample]] {
        if (weatherSamples == nil || weatherSamples!.count < 1) {
            return [[]]
        }
        
        return [weatherSamples!, weatherSamples!, weatherSamples!]
    }
    
}
