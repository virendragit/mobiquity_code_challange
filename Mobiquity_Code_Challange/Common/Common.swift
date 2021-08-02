//
//  Common.swift
//  Mobiquity_Code_Challange
//
//  Created by Virendra Gupta on 01/08/21.
//

import Foundation

struct Constants {
    static let apiKey = "fae7190d7e6433ec3a45285ffcf55c86"
}

struct ApiEndpoints
{
    static let todayForcast = "http://api.openweathermap.org/data/2.5/weather"
    static let fiveDayForcast = "http://api.openweathermap.org/data/2.5/forecast?lat=0&lon=0&appid=\(Constants.apiKey)&units=metric"
}
