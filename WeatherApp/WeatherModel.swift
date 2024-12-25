//
//  WeatherModel.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 30/11/24.
//

import Foundation
import CoreLocation  // To search with city name

struct Forecast: Codable {
    struct List: Codable {
        let dt: Date
        struct Main: Codable {
            let temp: Double
            let humidity: Int 
        }
        let main: Main
        struct Weather: Codable {
            let id: Int
            let description: String
        }
        let weather: [Weather]
    }
    let list: [List]
}


