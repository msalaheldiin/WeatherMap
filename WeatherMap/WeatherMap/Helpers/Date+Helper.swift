//
//  Date+Extension.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 24/06/2022.
//

import Foundation

extension Double {
    
func getDateFromTimeStamp() -> String {
        let date = NSDate(timeIntervalSince1970: self / 1000)
        let dayTimePeriodFormatter = DateFormatter()
        dayTimePeriodFormatter.dateFormat = "hh:mm:ss a"
        dayTimePeriodFormatter.amSymbol = "AM"
        dayTimePeriodFormatter.pmSymbol = "PM"
        let dateString = dayTimePeriodFormatter.string(from: date as Date)
        return dateString
    }
}
