//
//  UIViewController+Extension.swift
//  WeatherMap
//
//  Created by Mahmoud Salaheldin on 24/06/2022.
//

import Foundation
import UIKit

extension UIViewController {
     func alert(title: String, message: String) {
        let actionSheetController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "ok", style: .default, handler: nil)
        actionSheetController.addAction(cancelAction)
        present(actionSheetController, animated: true, completion: nil)
    }
}
