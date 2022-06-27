//
//  CityTableViewCell.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 24/06/2022.
//

import UIKit

class CityTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet weak var cityNameTextLabel: UILabel!
    
    // MARK: - Variables
    static let identifier = "\(CityTableViewCell.self)"
 
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK: - Extensions

extension CityTableViewCell: CityCellViewProtocol {
    func setItem(_ cityName: String) {
        cityNameTextLabel.text = cityName
     }
}
