//
//  ViewController.swift
//  Builder
//
//  Created by Alexander Avdacev on 9.04.22.
//

import UIKit

class ViewController: UIViewController {
    var alertsBuilder: BuilderAlert = myBuilderAlert()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let alert = alertsBuilder.buildOkAlert(with: "PatternBuilder", message: "Динамически конфигурируем алерт")
        present(alert, animated: true, completion: nil)
    }
}

