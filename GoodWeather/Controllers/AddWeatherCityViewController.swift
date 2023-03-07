//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by Daniel Braga Barbosa on 28/02/23.
//

import Foundation

import UIKit

class AddWeatherCityViewController: UIViewController
{
    
    @IBOutlet weak var cityNameTextField: UITextField!
    
    @IBAction func saveCityButtonPressed()
    {
        
        if let city = cityNameTextField.text
        {
            
            let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&APPID=fc2c418735994aa977f78dd638795fd0&units=imperial")!
            
            let weatherResource = Resource<Any>(url: weatherURL) { data in
                return data
            }
            
            Webservice().load(resource: weatherResource) { result in 
                
            }
            
        }
        
    }
    
    @IBAction func close()
    {
        self.dismiss(animated: true, completion: nil)
    }
    
}
