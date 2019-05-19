//
//  weatherApi.swift
//  weatherApp
//
//  Created by Sourabh on 19/5/19.
//  Copyright © 2019 Sourabh. All rights reserved.
//

import Foundation

class weatherApi: Codable
{
    let daily: Daily                        //daily
}

struct Daily: Codable {
    let data: [ForecastData]                  //data

    private enum CodingKeys : String, CodingKey{
        case data="data"
    }
}

struct ForecastData:Codable {

    let forecastDate: String        //time
    let forecastSummary: String     //summary
    let forecastIcon: String        //icon
    let forecastTemperatureMax: String  //temperatureMax
    let forecastTemperatureMin: String  //temperatureMin

    private enum CodingKeys : String, CodingKey{
        case forecastDate = "time"
        case forecastSummary = "summary"
        case forecastIcon = "icon"
        case forecastTemperatureMax = "temperatureMax"
        case forecastTemperatureMin = "temperatureMin"
        
    }

    
}
