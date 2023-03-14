//
//  Constants.swift
//  GoodWeather
//
//  Created by Daniel Braga Barbosa on 14/03/23.
//

import Foundation

struct Constants
{
    
    struct Urls
    {
        
        static func urlForWeatherByCity(city: String) -> URL
        {
            
            // get the default settings for temperature
            // let userDefaults = UserDefaults.standard
            // let unit = (userDefaults.value(forKey: "unit") as? String) ?? "imperial"
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&APPID=fc2c418735994aa977f78dd638795fd0&units=imperial")!
            
        }
        
    }
    
}
