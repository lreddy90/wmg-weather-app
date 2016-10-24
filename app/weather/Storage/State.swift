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

    // This function is to group the samples by their date 
    func groupedWeatherSamples() -> [[WeatherSample]] {

        if (weatherSamples == nil || weatherSamples!.count < 1) {
            return [[]]
        }
        
        // Helper variable to map the samples by their date
        var dict: [String:[WeatherSample]] = [:]
        
        for ws in weatherSamples! {
            let dateKey = ws.dateString(format: "YYYYMMdd")
            if (dict[dateKey] == nil || dict[dateKey]!.count < 1) {
                dict[dateKey] = []
            }
            dict[dateKey]?.append(ws)
        }
        
        var retval: [[WeatherSample]] = []
        
        let sortedKeys = Array(dict.keys).sorted()
        for key in sortedKeys {
            retval.append(dict[key]!)
        }
        
        return retval
    }
    
}
