//
//  WeatherView.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 30/11/24.
//

import CoreLocation
import SwiftUI

struct WeatherView: View {
    @State private var location: String = ""
    @State var cityName: Bool = false
    @State var forecast: Forecast? = nil
    let dateFormatter = DateFormatter()
    init(){
        dateFormatter.dateFormat = "E, MMM d, h:mm a"
    }
   
    var body: some View {
        VStack{
            Text("Daily Hourly Weather")
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity, alignment: .center)
            HStack {
                TextField("Search city", text: $location)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    getWeatherForecast(for: location)
                }, label: {
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                })
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.blue,lineWidth: 2))
            .padding(.horizontal)
            
            
            if let forecast = forecast {
                List(forecast.list,id:\.dt){ day in
                    VStack(alignment: .leading){
                        Text(dateFormatter.string(from: day.dt))
                        //Text("\(day.dt)")
                        HStack{
                            Image(systemName: "sun.max")
                                .font(.title)
                                .foregroundColor(.yellow)
                                .frame(width: 50,height: 50)
                                .background(Color.blue)
                                .cornerRadius(15)
                            VStack(alignment: .leading){
                                Text("Temprature: \(day.main.temp - 273,specifier: "%.0f" )C")
                                Text("description: \(day.weather[0].description)")
                                Text("Humidity: \(day.main.humidity)")
                                
                            }
                        }
                    }
                }
            }
            if cityName == true {
                VStack(alignment: .center){
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width:100,height: 100)
                        .foregroundColor(.gray)
                    Text("No Record Found")
                        .font(.title)
                        .foregroundColor(.gray)
                }
            }
            else{
                VStack(alignment: .center){
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width:100,height: 100)
                        .foregroundColor(.gray)
                    Text("Search Weather Hourly")
                        .font(.title)
                        .foregroundColor(.gray)
                }
            }
        }
        .padding(.horizontal)
    }
    
    
    func getWeatherForecast(for location: String){
        let apiService =  APIService.shared
        CLGeocoder().geocodeAddressString(location) { (placemarks, error) in
            if let error = error{
                print(error.localizedDescription)
                cityName = true
            }
            if let lat = placemarks?.first?.location?.coordinate.latitude,
               let log = placemarks?.first?.location?.coordinate.longitude{
                apiService.getJSON(urlString:
                                    "https://api.openweathermap.org/data/2.5/forecast?lat=\(lat)&lon=\(log)&appid=4dac9a46a871263f8df3df1c18d0b500",
                                   dateDecodingStrategy: .secondsSince1970) { (result: Result<Forecast, APIService.APIError>) in
                    switch result {
                    case .success(let forecast):
                        self.forecast = forecast
                        //    for day in forecast.list {
                        //           print(dateFormatter.string(from: day.dt))
                        //           print("Date: \(day.dt)")
                        //           print("Temp: \(day.main.temp)")
                        //           print("Humidity: \(day.main.humidity)")
                        //           print("Icon URL: \(day.weather.first?.weatherIconURL)")
                        //           print(location)
                        //                        }
                    case .failure(let apiError):
                        switch apiError {
                        case .error(let errorString):
                            print("API Error: \(errorString)")
                        }
                    }
                }
            }
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
