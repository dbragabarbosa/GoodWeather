//
//  WeatherListViewModel.swift
//  GoodWeather
//
//  Created by Mohammad Azam on 3/4/21.
//  Copyright © 2021 Mohammad Azam. All rights reserved.
//

import Foundation

class WeatherListViewModel {
    
    private var weatherViewModels = [WeatherViewModel]()
    
    func addWeatherViewModel(_ vm: WeatherViewModel) {
        weatherViewModels.append(vm)
    }
    
    func numberOfRows(_ section: Int) -> Int {
        return weatherViewModels.count
    }
    
    func modelAt(_ index: Int) -> WeatherViewModel {
        return weatherViewModels[index]
    }
    
    private func toCelsius()
    {
        weatherViewModels = weatherViewModels.map {vm in
            let weatherModel = vm
            weatherModel.temperature = (weatherModel.temperature - 32) * 5/9
            return weatherModel
        }
    }
    
    func updateUnit(to unit: Unit)
    {
        switch unit
        {
            case .celsius:
                toCelsius()
            case .fahrenheit:
                toFahrenheit()
        }
    }
}

class WeatherViewModel {
    
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


