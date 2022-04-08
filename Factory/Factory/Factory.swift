//
//  Factory.swift
//  Factory
//
//  Created by Alexander Avdacev on 8.04.22.
//

import Foundation
import UIKit

enum DefaultsAlerts {
    
    case okAlert
    case cancelAlert
    case unexpectedErrorAlert
}

protocol DefaultsAlertsFactory: AnyObject {
    
    func getAlert(by type: DefaultsAlerts) -> UIViewController
}

class DefaultsAlertsFactoryImpl: DefaultsAlertsFactory {
    
    func getAlert(by type: DefaultsAlerts) -> UIViewController {
        
        switch type {
        case .okAlert               : return configureOkAlert()
        case .cancelAlert           : return configureCancelAlert()
        case .unexpectedErrorAlert  : return configureUnexpectedAlert()
        }
    }
    
    private func configureOkAlert() -> UIViewController {
        
        let alertController = UIAlertController(title: nil, message: "Ok", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        return alertController
    }
    
    private func configureCancelAlert() -> UIViewController {
        
        let alertController = UIAlertController(title: nil, message: "Cancel text", preferredStyle: .alert)
        let action = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        return alertController
    }
    
    private func configureUnexpectedAlert() -> UIViewController {
        
        let alertController = UIAlertController(title: nil, message: "Wow unexpected error!", preferredStyle: .alert)
        let action = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        return alertController
    }
}
