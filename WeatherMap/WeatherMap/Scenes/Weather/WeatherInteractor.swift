//
//  WeatherInteractor.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 23/06/2022.
//

import Foundation

class WeatherInteractor: WeatherInteractorProtocol {
    
    var appID: String {
        return NetworkConstants.APIKey
    }
    
    // MARK: - Variables
    
    private var network: APIServiceContract
    weak var presenter: WeatherInteractorOutputProtocol?
    
    // MARK: - Init
    
    init(network: APIServiceContract = APIService.shared) {
        self.network = network
    }
    
    func getWeatherDetails(forCity city: String) {
        /// build `URL Request` unsing `API Builder`
        
        let parameters = WeatherRequest(q: city, appid: appID)
        let request = APIBuilder()
            .setPath(using: .weather)
            .setMethod(using: .get)
            .setParameters(using: .query(parameters.dictionary))
            .build()
        
        /// make the request
        _ = APIService.shared.request(using: request) { (result: APIResult<WeatherResponse>) in
            switch result {
            case .success(let data):
                self.presenter?.cityWeatherDetailsLoadedSuccessfully(response: data)
            case .error(let error):
                self.presenter?.cityWeatherDetailsLoadingFailed(error: error)
            }
        }
    }
}
