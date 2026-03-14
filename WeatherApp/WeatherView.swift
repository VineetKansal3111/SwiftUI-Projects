//
//  WeatherView.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 30/11/24.
//

import SwiftUI

struct WeatherView: View {
    @StateObject private var vm = WeatherViewModel()
    @State private var location: String = ""

    private let dateFormatter: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "E, MMM d, h:mm a"
        return df
    }()
    private let dayFormatter: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "EEEE, MMM d"
        return df
    }()

    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                // Search bar
                HStack(spacing: 12) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.secondary)
                        TextField("Search city (e.g. London)", text: $location)
                            .textInputAutocapitalization(.words)
                            .disableAutocorrection(true)
                            .onSubmit {
                                Task { await vm.fetchForecast(for: location) }
                            }
                    }
                    .padding(10)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(.secondarySystemBackground))
                    )

                    Button(action: { Task { await vm.fetchForecast(for: location) } }) {
                        Text("Search")
                            .bold()
                            .frame(minWidth: 70)
                    }
                    .buttonStyle(.borderedProminent)
                    .disabled(location.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                }
                .padding(.horizontal)
                .padding(.top)

                Group {
                    if vm.isLoading {
                        VStack(spacing: 8) {
                            ProgressView()
                            Text("Loading forecast...")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    } else if let error = vm.errorMessage {
                        VStack(spacing: 12) {
                            Image(systemName: "exclamationmark.triangle.fill")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .foregroundColor(.orange)
                            Text(error)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.red)
                        }
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    } else if let forecast = vm.forecast {
                        ScrollView {
                            LazyVStack(spacing: 14, pinnedViews: .sectionHeaders) {
                                ForEach(groupedEntries(forecast.list), id: \.day) { group in
                                    Section(header: sectionHeader(title: group.day)) {
                                        ForEach(group.entries) { entry in
                                            forecastRow(entry: entry)
                                                .padding(.horizontal)
                                        }
                                    }
                                }
                            }
                            .padding(.vertical)
                        }
                    } else {
                        VStack(spacing: 12) {
                            Image(systemName: "cloud.sun.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120, height: 120)
                                .foregroundColor(.blue)
                            Text("Search Weather Hourly")
                                .font(.title2)
                                .foregroundColor(.secondary)
                            Text("Enter a city above to load forecast data")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                }
                .animation(.default, value: vm.forecast?.list.count)

            }
            .navigationTitle("Forecast")
            .toolbar { ToolbarItem(placement: .navigationBarTrailing) {
                if vm.forecast != nil {
                    Button(action: { Task { await vm.fetchForecast(for: location) }}) {
                        Image(systemName: "arrow.clockwise")
                    }
                }
            }}
        }
        .navigationViewStyle(.stack)
    }

    // MARK: - Subviews
    @ViewBuilder
    private func sectionHeader(title: String) -> some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(Color(.systemBackground))
            Text(title)
                .font(.headline)
                .padding(.leading)
        }
        .frame(height: 42)
    }

    @ViewBuilder
    private func forecastRow(entry: Entry) -> some View {
        HStack(spacing: 12) {
            AsyncImage(url: entry.weather.first?.iconURL) { phase in
                if let img = phase.image {
                    img
                        .resizable()
                        .scaledToFill()
                } else if phase.error != nil {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.secondary)
                } else {
                    ProgressView()
                }
            }
            .frame(width: 56, height: 56)
            .background(Color(.secondarySystemFill))
            .clipShape(RoundedRectangle(cornerRadius: 12))

            VStack(alignment: .leading, spacing: 6) {
                Text(dateFormatter.string(from: entry.dt))
                    .font(.subheadline)
                Text(entry.weather.first?.description?.capitalized ?? "-")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            Spacer()
            VStack(alignment: .trailing, spacing: 4) {
                Text(String(format: "%.0f°C", entry.main.tempCelsius))
                    .font(.headline)
                Text("Humidity: \(entry.main.humidity)%")
                    .font(.caption2)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.secondarySystemBackground))
        )
    }

    private func groupedEntries(_ entries: [Entry]) -> [(day: String, entries: [Entry])] {
        let grouped = Dictionary(grouping: entries) { Calendar.current.startOfDay(for: $0.dt) }
        let sortedDates = grouped.keys.sorted()
        return sortedDates.map { date in
            (day: dayFormatter.string(from: date), entries: grouped[date]!.sorted { $0.dt < $1.dt })
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
