//
//  BuilderAlert.swift
//  Builder
//
//  Created by Alexander Avdacev on 9.04.22.
//

import Foundation
import UIKit

protocol BuilderAlert: AnyObject {
    
    func buildOkAlert(with title: String, message: String) -> UIViewController
    
    func buildCancelAlert(with message: String, handler: (() -> Void)?) -> UIViewController
}

class myBuilderAlert: BuilderAlert {
    
    func buildOkAlert(with title: String, message: String) -> UIViewController {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        return alertController
    }
    
    func buildCancelAlert(with message: String, handler: (() -> Void)?) -> UIViewController {
        
        let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Cancel", style: .default) { _ in
            handler?()
        }
        
        alertController.addAction(action)
        
        return alertController
    }
}
