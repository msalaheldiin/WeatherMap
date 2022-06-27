//
//  File.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 25/06/2022.
//

import Foundation

import Foundation

protocol APIServiceContract {
    func request<Entity: Decodable>(
        using request: URLRequest,
        completionHandler: @escaping(_ result: APIResult<Entity>) -> Void
    ) -> URLSessionTask
}
