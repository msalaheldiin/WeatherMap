//
//  Mocks.swift
//  WeatherMapTests
//
//  Created by Mahmoud Salaheldin on 24/06/2022.
//

import Foundation


class MockSuccessInteractor: WeatherInteractorProtocol {
    var appID: String {
        return ""
    }
    var presenter: WeatherInteractorOutputProtocol?
    func getWeatherDetails(forCity city: String) {
        presenter?.cityWeatherDetailsLoadedSuccessfully(response: WeatherResponse(coord: Coord(lon: 51.5085, lat: -0.1258), weather: [Weather(id: 2643743, main: "London", weatherDescription:"Clear", icon: "50d")], base: nil, main: Main(temp: 278.15, feelsLike: 278.15, tempMin: 278.15, tempMax: 278.15, pressure: 278.15, humidity: 278.15), visibility: 1012, wind: Wind(speed: 1234, deg: 1234), clouds: Clouds(all: 1012), dt: 1012, sys: Sys(type: 111, id: 2643743, country: "London", sunrise: 1485791400, sunset: 1485791400), timezone: 1485791400, id: 1485791400, name: "London", cod: 200))
    }
}

class MockFailurInteractor: WeatherInteractorProtocol {
    var appID: String{
        return ""
    }
    
    var presenter: WeatherInteractorOutputProtocol?
    
    func getWeatherDetails(forCity city: String) {
        presenter?.cityWeatherDetailsLoadingFailed(error:.requestError())
    }
}

class WeatherViewMock: WeatherViewProtocol {
    
    var presenter: WeatherPresenterProtocol
    init(presenter: WeatherPresenterProtocol) {
        self.presenter = presenter
    }
    var dataSuccessed = false
    var errorHappended = false
    
    func errorInloadingData(errorMessage: String) {
            errorHappended = true
        }
        
        func startAnimating() {
             
        }
        
        func stopAnimating() {
             
        }
        
        func showInfoStackView() {
             
        }
        
        func hideInfoStackView() {
             
        }
        
        func populateUI(weatherViewUIModel: WeatherViewUIModel) {
            dataSuccessed = true
        }
        
}
