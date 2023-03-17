//
//  Double+Extensions.swift
//  GoodWeather
//
//  Created by Daniel Braga Barbosa on 17/03/23.
//

import Foundation

extension Double
{
    func formatAsDegree() -> String
    {
        return String(format: "%.0f°", self)
    }
}
