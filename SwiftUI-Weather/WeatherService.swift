//
//  WeatherService.swift
//  SwiftUI-Weather
//
//  Created by Donald Pearson on 9/21/24.
//

import Foundation
import Combine

private enum APIKEY {
    static let key = "b7ebd0d23aa820c7a231e18a6bfed5d7" // Enter your API KEY here
}

class WeatherService {
    
    private let baseURL = "https://api.openweathermap.org/data/2.5/weather"
    
    func getWeather(for city: String) -> AnyPublisher<WeatherResponse, Error> {
        guard let url = URL(string: "\(baseURL)?q=\(city)&appid=\(APIKEY.key)&units=metric") else {
            fatalError("Invalid URL")
        }
        return URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: WeatherResponse.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
