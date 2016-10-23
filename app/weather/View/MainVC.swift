//
//  MainVC.swift
//  weather
//
//  Created by Richard Dancsi on 24/10/2016.
//  Copyright © 2016 wimagguc. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var container: UIView!
    
    var weatherTableView: WeatherTableView?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup the container
        weatherTableView = Bundle.main.loadNibNamed("WeatherTableView", owner: nil, options: nil)?[0] as? WeatherTableView
        container.addSubview(weatherTableView!)
        weatherTableView!.frame = container.bounds

//        ApiHandler.getForecast { (status, error) in
//            print("api handler finished in mainVC")
//        }
    }

}

