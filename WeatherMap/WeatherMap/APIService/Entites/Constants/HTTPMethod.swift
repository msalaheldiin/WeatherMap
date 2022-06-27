//
//  HTTPMethod.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 25/06/2022.
//

import Foundation

/// Enumeration that represents types of Network Methods
public enum HTTPMethod: String {
    case connect = "CONNECT"
    case delete = "DELETE"
    case get = "GET"
    case head = "HEAD"
    case options = "OPTIONS"
    case patch = "PATCH"
    case post = "POST"
    case put = "PUT"
    case trace = "TRACE"
}
