//
//  WeatherListViewModel.swift
//  GoodWeather
//
//  Created by Daniel Braga Barbosa on 15/03/23.
//

import Foundation

class WeatherListViewModel
{
    
}

class WeatherViewModel
{
    
    let weather: WeatherResponse
    
    init(weather: WeatherResponse) {
        self.weather = weather
    }
    
    var city: String {
        return weather.name
    }
    
    var temperature: Double {
        return weather.main.temp
    }
    
}
