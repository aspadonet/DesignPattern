//
//  ViewController.swift
//  Factory
//
//  Created by Alexander Avdacev on 8.04.22.
//

import UIKit

class ViewController: UIViewController {
    var alertsFactory: DefaultsAlertsFactory = DefaultsAlertsFactoryImpl()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        let alert = alertsFactory.getAlert(by: .okAlert)

        present(alert, animated: true, completion: nil)
    }


}

