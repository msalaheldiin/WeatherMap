//
//  request.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 26/06/2022.
//

import Foundation

struct WeatherRequest:Encodable {
    let q: String
    let appid: String
}
