//
//  WeatherPresenter.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 23/06/2022.
//

import Foundation

class WeatherPresenter {
    
    // MARK: - Variables
    
    weak var view: WeatherViewProtocol?
    private let interactor: WeatherInteractorProtocol
    let wirframe: WeatherCoordinatorProtocol
    private var cityName: String
    
    // MARK: - Init
    
    init(interactor: WeatherInteractorProtocol,
         wirframe: WeatherCoordinatorProtocol,
         cityName: String) {
        self.interactor = interactor
        self.wirframe = wirframe
        self.cityName = cityName
    }
}

// MARK: - WeatherPresenterProtocol

extension WeatherPresenter: WeatherPresenterProtocol {
    func viewDidLoad() {
        view?.hideInfoStackView()
        view?.startAnimating()
        interactor.getWeatherDetails(forCity: cityName)
    }
}

// MARK: - WeatherInteractorOutputProtocol

extension WeatherPresenter : WeatherInteractorOutputProtocol {
 
    func cityWeatherDetailsLoadedSuccessfully(response: WeatherResponse) {
        let model = WeatherViewUIModel(details:response )
            self.view?.stopAnimating()
            self.view?.showInfoStackView()
            self.view?.populateUI(weatherViewUIModel: model)
    }
    
    func cityWeatherDetailsLoadingFailed(error: APIError) {
        view?.stopAnimating()
        view?.errorInloadingData(errorMessage: error.localizedDescription)
    }
    
}
