//
//  NetworkConstants.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 25/06/2022.
//

import Foundation

public enum NetworkConstants {
    static let baseUrl: String = "https://api.openweathermap.org"
    static let APIKey: String = "bd23822847be9e3c19e222498e892388"
    static let timeoutIntervalForRequest: Double = 120
    static let serviceQueue: String = "APIService.serviceQueue"
}
