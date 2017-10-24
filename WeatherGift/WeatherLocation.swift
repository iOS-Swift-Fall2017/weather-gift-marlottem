//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Marc Marlotte on 10/24/17.
//  Copyright © 2017 Marc Marlotte. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class WeatherLocation {
    var name = ""
    var coordinates = ""
    var currentTemp = "--"
    
    func getWeather(completed: @escaping () -> ()) {
        let weatherURL = urlBase + urlAPIKey + coordinates
        
        Alamofire.request(weatherURL).responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                if let temperature = json["currently"]["temperature"].double {
                    let reoundedTemp = String(format: "%3.f", temperature)
                    self.currentTemp = reoundedTemp + "°"
                } else {
                    print("Could not return a temperature")
                }
            case .failure(let error):
                print(error)
            }
            completed()
        }
    }
}
