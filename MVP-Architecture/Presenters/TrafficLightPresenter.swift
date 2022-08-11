//
//  TrafficLightPresenter.swift
//  MVP-Architecture
//
//  Created by Jorge García Mateos on 11/8/22.
//

import Foundation

protocol TrafficLightViewDelegate: NSObjectProtocol {
    func displayTrafficLight(description: String)
}

class TrafficLightPresenter {
    private let trafficLightService: TrafficLightService
    weak private var trafficLightViewDelegate: TrafficLightViewDelegate?

    init(trafficLightService: TrafficLightService){
        self.trafficLightService = trafficLightService
    }

    func setViewDelegade(trafficLIghtViewDelegate: TrafficLightViewDelegate?){
        self.trafficLightViewDelegate = trafficLIghtViewDelegate
    }

    func trafficLightColorSelected(colorName: String) {
        trafficLightService.getTrafficLight(colorName: colorName) { [weak self] trafficLight in
            if let trafficLight = trafficLight {
                self?.trafficLightViewDelegate?.displayTrafficLight(description: trafficLight.description)
            }
        }
    }


}
