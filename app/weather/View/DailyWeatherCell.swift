//
//  DailyWeatherCell.swift
//  weather
//
//  Created by Richard Dancsi on 24/10/2016.
//  Copyright © 2016 wimagguc. All rights reserved.
//

import UIKit

class DailyWeatherCell : UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var scrollViewTopMargin: NSLayoutConstraint!
    
    var weatherSamples: [WeatherSample] = []

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setWeatherSamples(weatherSamples: [WeatherSample]) {
        self.weatherSamples = weatherSamples

        // TODO this is unsafe
        label.text = weatherSamples[0].weatherMain

        let width = 120
        let height = self.bounds.height - scrollViewTopMargin.constant
        scrollView.contentSize = CGSize(width: CGFloat(width * weatherSamples.count), height: height)

        // TODO This is actually pretty expensive
        
        var i = 0
        for ws in weatherSamples {
            let sampleView = Bundle.main.loadNibNamed("SampleView", owner: nil, options: nil)?[0] as! SampleView
            sampleView.frame = CGRect(x: CGFloat(i*width) + 5, y: scrollViewTopMargin.constant, width: CGFloat(width - 10), height: height)
            sampleView.setWeatherSample(weatherSample: ws)
            self.addSubview(sampleView)
            i += 1
        }
    }
    
}
