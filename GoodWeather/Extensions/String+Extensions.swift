//
//  String+Extensions.swift
//  GoodWeather
//
//  Created by Daniel Braga Barbosa on 14/03/23.
//

import Foundation

extension String
{
    
    func escaped() -> String
    {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
    
}
