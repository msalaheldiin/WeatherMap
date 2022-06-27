//
//  CityViewController.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 23/06/2022.
//

import UIKit

class CityViewController: UIViewController {
    
    // MARK: - Outlets

    @IBOutlet weak var tableView: UITableView!
    
    
    // MARK: - Variables
    var presenter: CityPresenterProtocol
    
    // MARK: - Init
    
    init(presenter: CityPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName:"\(CityViewController.self)", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupTableView()
        presenter.viewDidLoad()
    }
}


// MARK: -  Extensions
extension CityViewController : CityViewProtocol {
    
    private func setupNavigationBar() {
        title = "Weather Map"
        view.applyGradient(isVertical: true, colorArray: [.link ,.white])
    }
    
    private func setupTableView() {
        tableView.register(UINib.init(nibName: CityTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: CityTableViewCell.identifier)
        tableView.rowHeight = 50
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}

// MARK: - UITableViewDataSource
extension CityViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfItems
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return getCityCell(indexPath: indexPath)
    }
    
    private func getCityCell(indexPath: IndexPath) -> CityTableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: CityTableViewCell.identifier, for: indexPath) as? CityTableViewCell else {
            fatalError("CityTableViewCell Cell Not Registered")
        }
        presenter.configure(cityCell: cell, forIndex: indexPath)
        return cell
    }
}

// MARK: - UITableViewDelegate

extension CityViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelectRowAt(forIndex : indexPath)
    }
}
