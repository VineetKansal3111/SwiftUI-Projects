//
//  WeatherViewModel.swift
//  SwiftThinkingBootcamp
//
//  Created by Dev on 14/03/26.
//

import Foundation
import Combine

@MainActor
class WeatherViewModel: ObservableObject {
    @Published var forecast: Forecast? = nil
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil

    private var cancellables = Set<AnyCancellable>()
    private let apiKey = "4dac9a46a871263f8df3df1c18d0b500"

    func fetchForecast(for city: String) async {
        let trimmed = city.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else {
            DispatchQueue.main.async {
                self.errorMessage = "Please enter a city name."
            }
            return
        }

        isLoading = true
        errorMessage = nil
        let cityQuery = trimmed.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? trimmed
        let urlString = "https://api.openweathermap.org/data/2.5/forecast?q=\(cityQuery)&appid=\(apiKey)"

        APIService.shared.getJSON(urlString: urlString, dateDecodingStrategy: .secondsSince1970) { (result: Result<Forecast, APIService.APIError>) in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                case .success(let forecast):
                    self.forecast = forecast
                case .failure(let error):
                    switch error {
                    case .error(let message):
                        self.errorMessage = message
                    }
                }
            }
        }
    }
}
