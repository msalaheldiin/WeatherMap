//
//  WeatherResponse.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 24/06/2022.
//


import Foundation

// MARK: - WeatherResponse
struct WeatherResponse: Codable {
    let coord: Coord?
    let weather: [Weather]?
    let base: String?
    let main: Main?
    let visibility: Double?
    let wind: Wind?
    let clouds: Clouds?
    let dt: Double?
    let sys: Sys
    let timezone: Double?
    let id: Double?
    let name: String?
    let cod: Double?
}

// MARK: - Clouds
struct Clouds: Codable {
    let all: Double?
}

// MARK: - Coord
struct Coord: Codable {
    let lon: Double?
    let lat: Double?
}

// MARK: - Main
struct Main: Codable {
    let temp: Double?
    let feelsLike: Double?
    let tempMin: Double?
    let tempMax: Double?
    let pressure: Double?
    let humidity: Double?

    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike
        case tempMin
        case tempMax
        case pressure, humidity
    }
}

// MARK: - Sys
struct Sys: Codable {
    let type: Double?
    let id: Double?
    let country: String?
    let sunrise: Double?
    let sunset: Double?
}

// MARK: - Weather
struct Weather: Codable {
    let id: Double?
    let main: String?
    let weatherDescription: String?
    let icon: String?

    enum CodingKeys: String, CodingKey {
        case id, main
        case weatherDescription
        case icon
    }
}

// MARK: - Wind
struct Wind: Codable {
    let speed: Double?
    let deg: Double?
}
