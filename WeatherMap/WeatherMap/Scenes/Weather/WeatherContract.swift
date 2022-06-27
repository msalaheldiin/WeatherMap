//
//  WeatherContract.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 23/06/2022.
//

import Foundation

// MARK: - View
protocol WeatherViewProtocol: AnyObject {
    var presenter: WeatherPresenterProtocol {get set}
    func errorInloadingData(errorMessage: String)
    func startAnimating()
    func stopAnimating()
    func showInfoStackView()
    func hideInfoStackView()
    func populateUI(weatherViewUIModel: WeatherViewUIModel)
}

// MARK: - Presenter
protocol WeatherPresenterProtocol: AnyObject {
    func viewDidLoad()
}

// MARK: - Interactor
protocol WeatherInteractorProtocol: AnyObject {
    var appID: String {get}
    var presenter: WeatherInteractorOutputProtocol? {get set}
    func getWeatherDetails(forCity city: String)
}

// MARK: - Interactor Output
protocol WeatherInteractorOutputProtocol: AnyObject {
    func cityWeatherDetailsLoadedSuccessfully(response: WeatherResponse)
    func cityWeatherDetailsLoadingFailed(error: APIError)
}

// MARK: - Router
protocol WeatherCoordinatorProtocol {
}
