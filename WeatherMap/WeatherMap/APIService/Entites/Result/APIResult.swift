//
//  APIResult.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 25/06/2022.
//

import Foundation

public enum APIResult<Entity: Decodable> {
    case success(Entity)
    case error(APIError)
}
