// Forecast.swift
// Separate model file for the forecast container

import Foundation

struct Forecast: Codable {
    let list: [Entry]
}
