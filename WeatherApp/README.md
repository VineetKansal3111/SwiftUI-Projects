WeatherApp

This small Weather module provides a SwiftUI `WeatherView` that searches for a city and shows a 5-day/3-hour forecast using OpenWeatherMap.

Setup
1. Replace the API key in `WeatherViewModel.swift` with your OpenWeatherMap API key.
   - Current placeholder key: `4dac9a46a871263f8df3df1c18d0b500`
2. Make sure the app has network permission. Simulator should have internet access.

Usage
- Open `WeatherView` in Xcode, enter a city name (e.g., "London"), and press the search button.
- The view will geocode the city name and fetch the forecast.

Notes
- The code uses `APIService.getJSON` to make network calls. That helper decodes dates using `secondsSince1970` for the forecast response.
- Error messages and loading state are shown in the UI.

Optional improvements
- Move the API key to a secure place such as a configuration file or keychain.
- Add caching for fetched forecasts to reduce network usage.
- Improve the UI (icons, graphing temperatures, grouping by day).
