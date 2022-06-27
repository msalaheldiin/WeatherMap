//
//  CityPresenter.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 23/06/2022.
//

import Foundation


class CityPresenter  {
    
    // MARK: - Variables
    weak var view: CityViewProtocol?
    private let interactor: CityInteractorProtocol
    let wirframe: CityCoordinatorProtocol
    private let cities = ["Gothenburg",
                  "Stockholm",
                  "Mountain View",
                  "London",
                  "New York",
                  "Berlin"]
 
    // MARK: - Init
    init(interactor: CityInteractorProtocol,
         wirframe: CityCoordinatorProtocol) {
        self.interactor = interactor
        self.wirframe = wirframe
    }
}


// MARK: - CityPresenterProtocol
extension CityPresenter: CityPresenterProtocol {

    func viewDidLoad() {
    }
    
    var numberOfItems: Int {
        return cities.count
    }
    
    func configure(cityCell cell: CityCellViewProtocol, forIndex indexPath: IndexPath) {
        let cityName = cities[indexPath.row]
            cell.setItem(cityName)
       }

    func didSelectRowAt(forIndex indexPath: IndexPath) {
        wirframe.navigateCityWeatherDetails(cityName: cities[indexPath.row])
    }
}

// MARK: - CityInteractorOutputProtocol
extension CityPresenter : CityInteractorOutputProtocol {
    
}
