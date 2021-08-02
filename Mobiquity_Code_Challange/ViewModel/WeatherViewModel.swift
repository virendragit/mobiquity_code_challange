//
//  WeatherViewModel.swift
//  Mobiquity_Code_Challange
//
//  Created by Virendra Gupta on 01/08/21.
//

import Foundation

protocol WeatherViewModelDelegate {
    func didReceiveWeatherResponseForToday(weatherResponse :TodayForcastData? )
    
    func didReceiveWeatherResponseForFiveDays(weatherResponse :FiveDayForcast?)
}

struct WeatherViewModel {
    var delegate : WeatherViewModelDelegate?
    
    let cityValue = CityManager.shared.selectedCityName
    
    func ServiceCallToGetTodayForcast() {
        //use WeatherResource to call APIs
        let weatherResource = WeatherResource()
        weatherResource.getTodayForcast(cityname: cityValue ?? "") { (response) in
            DispatchQueue.main.async {
                self.delegate?.didReceiveWeatherResponseForToday(weatherResponse: response)
            }
        }
    }
    
    func ServiceCallToGetFiveDaysForcast() {
        //use WeatherResource to call APIs
        let weatherResource = WeatherResource()
        weatherResource.getfiveDayForcast{ (response) in
            DispatchQueue.main.async {
                self.delegate?.didReceiveWeatherResponseForFiveDays(weatherResponse: response)
            }
        }
    }
    
}
