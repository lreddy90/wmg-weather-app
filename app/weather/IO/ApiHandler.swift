//
//  ApiHandler.swift
//  weather
//
//  Created by Richard Dancsi on 24/10/2016.
//  Copyright © 2016 wimagguc. All rights reserved.
//

import Foundation

class ApiHandler {
    
    /**
     Download weather forecast data
     */
    
    class func getForecast(_ completionHandler: (Int, Error?) -> Void) {
        
        var apiKey: String?
        
        // Find the API key in Keys.plist
        if let path = Bundle.main.path(forResource: "Keys", ofType: "plist") {
            let keys = NSDictionary(contentsOfFile: path)
            if let key = keys?.value(forKey: "OWM_API_KEY") as? String {
                apiKey = key
            }
        }
        
        // If key is still nil here, let's make sure we don't crash while
        // assembling the url
        apiKey = apiKey == nil ? "" : apiKey!
        
        let url = "http://api.openweathermap.org/data/2.5/forecast?lat=51.527458&lon=-0.088753&APPID=\(apiKey!)"
        
        HttpHandler.sendGetRequest(url: url) { (data, error) -> Void in
            print("data=\(data), error=\(error)")
        }
        
    }
    
}
