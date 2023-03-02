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
        
    }
    
    @IBAction func close()
    {
        self.dismiss(animated: true, completion: nil)
    }
    
}
