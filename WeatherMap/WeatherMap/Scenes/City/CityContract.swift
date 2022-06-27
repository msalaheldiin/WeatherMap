//
//  CityContract.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 23/06/2022.
//

import Foundation

// MARK: - View
protocol CityViewProtocol: AnyObject {
    var presenter: CityPresenterProtocol {get set}
}

// MARK: - Presenter
protocol CityPresenterProtocol: AnyObject {
    func viewDidLoad()
    var numberOfItems: Int { get }
    func configure(cityCell cell: CityCellViewProtocol, forIndex indexPath: IndexPath)
    func didSelectRowAt(forIndex indexPath: IndexPath)    
}

// MARK: - Interactor
protocol CityInteractorProtocol: AnyObject {
    var presenter: CityInteractorOutputProtocol? {get set}
}

// MARK: - Interactor Output
protocol CityInteractorOutputProtocol: AnyObject {
}

// MARK: - Router
protocol CityCoordinatorProtocol {
    func navigateCityWeatherDetails(cityName: String)

 }

// MARK: - CityCellViewProtocol
protocol CityCellViewProtocol: AnyObject {
    func setItem(_ cityName: String)
 }
