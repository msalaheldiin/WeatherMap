//
//  WeatherRouter.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 23/06/2022.
//

import Foundation
import UIKit

class WeatherCoordinator: WeatherCoordinatorProtocol {
 
    // MARK: - Variables
    let navigationController: UINavigationController
    
    // MARK: - Init
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start(cityName: String) {
        let interactor = WeatherInteractor()
        let presenter = WeatherPresenter.init(interactor: interactor, wirframe: self, cityName: cityName)
        interactor.presenter = presenter
        let vc = WeatherViewController(presenter: presenter)
        presenter.view = vc
        navigationController.pushViewController(vc, animated: true)
    }
}
