// Entry.swift
// Separate model file for forecast entries

import Foundation

struct Entry: Codable, Identifiable {
    let dt: Date
    let main: Main
    let weather: [Weather]

    var id: Date { dt }

    struct Main: Codable {
        let temp: Double
        let humidity: Int

        var tempCelsius: Double { temp - 273.15 }
        var tempFahrenheit: Double { (temp - 273.15) * 9/5 + 32 }
    }

    struct Weather: Codable {
        let id: Int?
        let main: String?
        let description: String?
        let icon: String?

        var iconURL: URL? {
            guard let icon = icon else { return nil }
            return URL(string: "https://openweathermap.org/img/wn/\(icon)@2x.png")
        }
    }
}
