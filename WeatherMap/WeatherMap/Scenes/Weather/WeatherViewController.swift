//
//  WeatherViewController.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 23/06/2022.
//

import UIKit

class WeatherViewController: UIViewController {
    
    // MARK: - Outlets

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var cityNameValueLabel: UILabel!
    @IBOutlet weak var weatherStatusIV: UIImageView!
    @IBOutlet weak var tempratureValueLabel: UILabel!
    @IBOutlet weak var statusValueLabel: UILabel!
    @IBOutlet weak var infoStackView: UIStackView!
    @IBOutlet weak var maxTempValueLabel: UILabel!
    @IBOutlet weak var minTempValueLabel: UILabel!
    @IBOutlet weak var pressureTextLabel: UILabel!
    @IBOutlet weak var pressureValueLabel: UILabel!
    @IBOutlet weak var humidityTextLabel: UILabel!
    @IBOutlet weak var humidityValueLabel: UILabel!
    @IBOutlet weak var windSpeedTextLabel: UILabel!
    @IBOutlet weak var windSpeedValueLabel: UILabel!
    @IBOutlet weak var sunRiseTextLabel: UILabel!
    @IBOutlet weak var sunRiseValueLabel: UILabel!
    @IBOutlet weak var sunsetTextLabel: UILabel!
    @IBOutlet weak var sunsetValueLabel: UILabel!
    
    // MARK: - Variables

    var presenter: WeatherPresenterProtocol
    
    // MARK: - Init
    
    init(presenter: WeatherPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName:"\(WeatherViewController.self)", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        presenter.viewDidLoad()
     }
}

// MARK: - Setup UI

extension WeatherViewController {
    private func setupUI() {
        setupCotainerView()
        setupNavigationBar()
        setupsunsetTextLabel()
        setupSunRiseTextLabel()
        setupPressureTextLabel()
        setupHumidityTextLabel()
        setupWindSpeedTextLabel()
    }
    
    private func setupCotainerView() {
        view.applyGradient(isVertical: true, colorArray: [.link ,.white])
    }
    
    private func setupNavigationBar() {
        title = "Weather Forecasting"
        navigationController?.navigationBar.tintColor = .black
     }
    
    private func setupPressureTextLabel() {
        pressureTextLabel.text = "Pressure: "
        
    }
    
    private func setupHumidityTextLabel() {
        humidityTextLabel.text = "Humidity: "
    }
    
    private func setupWindSpeedTextLabel() {
        windSpeedTextLabel.text = "Wind Speed: "
    }
    
    private func setupSunRiseTextLabel() {
        sunRiseTextLabel.text = "Sunrise: "
    }
    
    private func setupsunsetTextLabel() {
        sunsetTextLabel.text = "Sunset: "
    }
}

// MARK: - WeatherViewProtocol
extension WeatherViewController: WeatherViewProtocol {
    
    func errorInloadingData(errorMessage: String) {
        alert(title: "Error", message: errorMessage)
    }
    
    func startAnimating() {
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
    }
    
    func stopAnimating() {
        activityIndicator.isHidden = true
        activityIndicator.startAnimating()
    }
    
    func showInfoStackView() {
        infoStackView.isHidden = false
    }
    
    func hideInfoStackView() {
        infoStackView.isHidden = true
    }
    
    func populateUI(weatherViewUIModel: WeatherViewUIModel) {
        cityNameValueLabel.text = weatherViewUIModel.cityName
        weatherStatusIV.downloaded(from: weatherViewUIModel.iconURL)
        tempratureValueLabel.text = weatherViewUIModel.temp
        statusValueLabel.text = weatherViewUIModel.weatherStatus
        maxTempValueLabel.text = weatherViewUIModel.maximumTemp
        minTempValueLabel.text = weatherViewUIModel.minimumTemp
        pressureValueLabel.text = weatherViewUIModel.pressure
        humidityValueLabel.text = weatherViewUIModel.humidity
        windSpeedValueLabel.text = weatherViewUIModel.windSpeed
        sunRiseValueLabel.text = weatherViewUIModel.sunRise
        sunsetValueLabel.text = weatherViewUIModel.sunSet
    }
}
 
