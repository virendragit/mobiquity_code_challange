//
//  WeatherViewModel.swift
//  Mobiquity_Code_Challange
//
//  Created by Virendra Gupta on 01/08/21.
//

import Foundation

protocol WeatherViewModelDelegate {
    func didReceiveWeatherResponse(weatherResponse :TodayForcastData? )
}

struct WeatherViewModel {
    var delegate : WeatherViewModelDelegate?
    
    func ServiceCallToGetData() {
        //use WeatherResource to call APIs
        let weatherResource = WeatherResource()
        weatherResource.getTodayForcast { (response) in
            DispatchQueue.main.async {
                self.delegate?.didReceiveWeatherResponse(weatherResponse: response)
            }
        }
    }
    
}
