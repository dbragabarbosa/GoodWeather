//
//  SettingsViewModelTests.swift
//  GoodWeatherTests
//
//  Created by Daniel Braga Barbosa on 16/05/23.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import XCTest

@testable import GoodWeather

final class SettingsViewModelTests: XCTestCase
{

    private var settingsVM: SettingsViewModel!
    
    override class func setUp()
    {
        super.setUp()
        
        self.settingsVM = SettingsViewModel()
    }
    
    func test_should_make_sure_that_default_selected_unit_is_fahrenheit()
    {
        XCTAssertEqual(settingsVM.selectedUnit, .fahrenheit)
    }

}
