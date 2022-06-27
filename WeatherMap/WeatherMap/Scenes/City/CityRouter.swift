//
//  CityRouter.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 23/06/2022.
//

import Foundation
import UIKit

class CityCoordinator: CityCoordinatorProtocol {
    
    // MARK: - Variables
    let navigationController: UINavigationController
    
    // MARK: - Init
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let interactor = CityInteractor()
        let presenter = CityPresenter.init(interactor: interactor, wirframe: self)
        interactor.presenter = presenter
        let vc = CityViewController(presenter: presenter)
        presenter.view = vc
        navigationController.pushViewController(vc, animated: true)
    }
    
    func navigateCityWeatherDetails(cityName: String){
        WeatherCoordinator.init(navigationController: navigationController).start(cityName: cityName)
    }

}
