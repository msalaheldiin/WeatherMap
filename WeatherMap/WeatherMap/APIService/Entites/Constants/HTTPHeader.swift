//
//  HTTPHeader.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 25/06/2022.
//

import Foundation

/// Enumeration that represents types of Network Headers
public typealias HTTPHeaders = [String: String]
public enum HTTPHeader {
    static let contentType = "Content-Type"
    static let authentication = "Authorization"
}
