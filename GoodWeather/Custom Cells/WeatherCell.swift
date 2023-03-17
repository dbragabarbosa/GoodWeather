//
//  WeatherCell.swift
//  GoodWeather
//
//  Created by Daniel Braga Barbosa on 01/03/23.
//

import Foundation

import UIKit

class WeatherCell: UITableViewCell
{
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    func configure(_ vm: WeatherViewModel) {
        self.cityNameLabel.text = vm.city
        self.temperatureLabel.text = "\(vm.temperature.formatAsDegree())"
    }
}
