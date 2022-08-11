//
//  TrafficLightViewController.swift
//  MVP-Architecture
//
//  Created by Jorge García Mateos on 11/8/22.
//

import UIKit

class TrafficLightViewController: UIViewController, TrafficLightViewDelegate {
    @IBOutlet weak var descriptionLabel: UILabel!
    private let trafficLightPresenter = TrafficLightPresenter(trafficLightService: TrafficLightService())

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        trafficLightPresenter.setViewDelegade(trafficLIghtViewDelegate: self)
    }

    @IBAction func redLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Red")
    }

    @IBAction func yellowLightAction(_ sender: Any) {        trafficLightPresenter.trafficLightColorSelected(colorName: "Yellow")
    }

    @IBAction func greenLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Green")
    }

    func displayTrafficLight(description: String) {
        descriptionLabel.text = description
    }


}

