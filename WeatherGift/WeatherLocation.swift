//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Marc Marlotte on 11/21/17.
//  Copyright © 2017 Marc Marlotte. All rights reserved.
//

import Foundation

class WeatherLocation: Codable {
    var name: String
    var coordinates: String
    
    init(name: String, coordinates: String) {
        self.name = name
        self.coordinates = coordinates
    }
}
