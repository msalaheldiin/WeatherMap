//
//  RequestParameters.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 25/06/2022.
//

import Foundation

/// Enumeration that represents type of Network Parameters
public typealias Parameters = [String: Any]
public enum RequestParameters {
    case body(_: Parameters)
    case query(_: Parameters)
}
