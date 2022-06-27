//
//  CityInteractor.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 23/06/2022.
//

import Foundation


class CityInteractor: CityInteractorProtocol {
   
    // MARK: - Variables
    
    private var network: APIServiceContract
    weak var presenter: CityInteractorOutputProtocol?
    // MARK: - Init
    
    init(network: APIServiceContract = APIService.shared) {
        self.network = network
    }
}
