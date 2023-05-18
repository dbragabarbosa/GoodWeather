//
//  WeatherListViewModelTests.swift
//  GoodWeatherTests
//
//  Created by Daniel Braga Barbosa on 18/05/23.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import XCTest

@testable import GoodWeather

final class WeatherListViewModelTests: XCTestCase
{
    
    private var weatherListVM: WeatherListViewModel!
 
    override func setUp()
    {
        super.setUp()
        
        self.weatherListVM = WeatherListViewModel()
        
        self.weatherListVM.addWeatherViewModel(WeatherViewModel(name: "Houston", currentTemperature: TemperatureViewModel(temperature: 32, temperatureMin: 0, temperatureMax: 0)))
        
        self.weatherListVM.addWeatherViewModel(WeatherViewModel(name: "Austin", currentTemperature: TemperatureViewModel(temperature: 72, temperatureMin: 0, temperatureMax: 0)))
    }
    
    func test_should_be_ablee_to_convert_to_celsius_successfully()
    {
        let celsiusTemperature = [0,22.2222]
        
        self.weatherListVM.updateUnit(to: .celsius)
        
        for(index, vm) in self.weatherListVM.weatherViewModels.enumerated()
        {
            XCTAssertEqual(round(vm.currentTemperature.temperature), round(celsiusTemperature[index]))
        }
    }
    
    override func tearDown()
    {
        super.tearDown()
    }
    
}
