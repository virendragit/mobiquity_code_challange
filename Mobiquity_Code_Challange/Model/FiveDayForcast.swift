//
//  FiveDayForcast.swift
//  Mobiquity_Code_Challange
//
//  Created by Virendra Gupta on 01/08/21.
//

import Foundation

// MARK: - FiveDayForcast
struct FiveDayForcast: Decodable {
    let cod: String?
    let message, cnt: Int?
    let list: [List]?
    let city: City?
}

// MARK: - City
struct City: Decodable {
    let id: Int?
    let name: String?
    let coord: Coord?
    let country: String?
    let population, timezone, sunrise, sunset: Int?
}



// MARK: - List
struct List: Decodable {
    let dt: Int?
    let main: Main?
    let weather: [Weather]?
    let clouds: Clouds?
    let wind: Wind?
    let visibility, pop: Int?
    let sys: Sys?
    let dtTxt: String?

    enum CodingKeys: String, CodingKey {
        case dt, main, weather, clouds, wind, visibility, pop, sys
        case dtTxt = "dt_txt"
    }
}


