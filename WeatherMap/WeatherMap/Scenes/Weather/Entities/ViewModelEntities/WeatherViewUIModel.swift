//
//  ViewModelEntity.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 24/06/2022.
//

import Foundation

//MARK: - WeatherViewUIModel
public struct WeatherViewUIModel{
    
    // MARK: - Variables

    private(set) var cityName: String
    private(set) var weatherStatus: String
    private(set) var iconURL: String
    private(set) var temp: String
    private(set) var minimumTemp: String
    private(set) var maximumTemp: String
    private(set) var pressure: String
    private(set) var humidity: String
    private(set) var windSpeed: String
    private(set) var sunRise: String
    private(set) var sunSet: String

    // MARK: - Init
    
    init(details: WeatherResponse) {
        cityName = details.name ?? ""
        weatherStatus = details.weather?.first?.main ?? ""
        iconURL =
        "http://openweathermap.org/img/wn/\(details.weather?.first?.icon ?? "")@2x.png"
        temp = "\(details.main?.temp ?? 0) °F"
        minimumTemp = "L: \(details.main?.tempMin ?? 0) °F"
        maximumTemp = "H: \(details.main?.tempMax ?? 0) °F"
        pressure = "\(details.main?.pressure ?? 0 )"
        humidity = "\(details.main?.humidity ?? 0) %"
        windSpeed = "\(details.wind?.speed ?? 0) km/h"
        sunRise = (details.sys.sunrise ?? 0).getDateFromTimeStamp()
        sunSet = (details.sys.sunset ?? 0).getDateFromTimeStamp()
    }
}
