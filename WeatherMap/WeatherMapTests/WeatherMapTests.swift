//
//  WeatherMapTests.swift
//  WeatherMapTests
//
//  Created by Mahmoud Salaheldin on 24/06/2022.
//

import XCTest
@testable import WeatherMap


class WeatherMapTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testWeatherDataLoadedSuccessfully(){
        
        let interactor = MockSuccessInteractor()
        let navigationController = UINavigationController()
        let wireFrame = WeatherCoordinator(navigationController: navigationController)
        let presenter = WeatherPresenter(interactor: interactor, wirframe: wireFrame, cityName: "London")
        let view = WeatherViewMock(presenter: presenter)
        presenter.view = view
        interactor.presenter = presenter
        presenter.viewDidLoad()
        assert(view.dataSuccessed)
    }

    func testWeatherErrorInloadingData(){

        let interactor = MockFailurInteractor()
        let navigationController = UINavigationController()
        let wireFrame = WeatherCoordinator(navigationController: navigationController)
        let presenter = WeatherPresenter(interactor: interactor, wirframe: wireFrame,cityName: "London")
        let view = WeatherViewMock(presenter: presenter)
        presenter.view = view
        interactor.presenter = presenter
        presenter.viewDidLoad()
        assert(view.errorHappended)
    }
}
