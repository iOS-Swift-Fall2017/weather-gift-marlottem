//
//  TimeInterval+Format.swift
//  WeatherGift
//
//  Created by Marc Marlotte on 11/7/17.
//  Copyright © 2017 Marc Marlotte. All rights reserved.
//

import Foundation


extension TimeInterval {
    func format(timeZone: String, dateFormatter: DateFormatter) -> String {
        let usableDate = Date(timeIntervalSince1970: self)
        dateFormatter.timeZone = TimeZone(identifier: timeZone)
        let dateString = dateFormatter.string(from: usableDate)
        return dateString
    }
}
