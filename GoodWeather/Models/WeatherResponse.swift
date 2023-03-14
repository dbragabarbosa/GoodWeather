//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by Daniel Braga Barbosa on 09/03/23.
//

import Foundation

struct WeatherResponse: Decodable
{
    let name: String
    let main: Weather
}

struct Weather: Decodable
{
    let temp: Double
    let humidity: Double
}
