//
//  TrafficLightService.swift
//  MVP-Architecture
//
//  Created by Jorge García Mateos on 11/8/22.
//

import Foundation

class TrafficLightService {
    func getTrafficLight(colorName: String, callBack: (TrafficLight?) -> Void) {
        let trafficLights = [TrafficLight(colorName: "Red", description: "Stop"),
                             TrafficLight(colorName: "Green", description: "Go"),
                             TrafficLight(colorName: "Yellow", description: "About to change to red")]

        if let foundTrafficLight = trafficLights.first(where: { $0.colorName == colorName }) {
            callBack(foundTrafficLight)
        } else {
            callBack(nil)
        }
    }
}

