//
//  Encodable+Helper.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 26/06/2022.
//

import Foundation

extension Encodable {
    var data: Data {
        do {
            return try JSONEncoder().encode(self)
        } catch {
            fatalError("Couldn't encode Data")
        }
    }
    var dictionary: [String: Any] {
        return (try? JSONSerialization.jsonObject(with: data)) as? [String: Any] ?? [:]
    }
}
