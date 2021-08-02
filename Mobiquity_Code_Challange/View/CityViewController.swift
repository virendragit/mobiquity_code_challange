//
//  CityViewController.swift
//  Mobiquity_Code_Challange
//
//  Created by Virendra Gupta on 02/08/21.
//

import UIKit

class CityViewController: UIViewController,WeatherViewModelDelegate {
    @IBOutlet weak var cityNameLbl: UILabel!
    
    @IBOutlet weak var tempLbl: UILabel!
    @IBOutlet weak var weatherLbl: UILabel!
    
    @IBOutlet weak var humidityLbl: UILabel!
    
    private var weatherViewModel = WeatherViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weatherViewModel.delegate = self
        
        weatherViewModel.ServiceCallToGetTodayForcast()
    }

    
    func didReceiveWeatherResponseForToday(weatherResponse: TodayForcastData?) {
        
//        DispatchQueue.main.async() {
//            self.uiSetUp(weatherResponse: weatherResponse)
//        }
        
        uiSetUp(weatherResponse: weatherResponse)
        
        
        print(weatherResponse!)
    }
    
    func didReceiveWeatherResponseForFiveDays(weatherResponse: FiveDayForcast?) {
        print(weatherResponse!)
    }
    
    
    private func uiSetUp(weatherResponse: TodayForcastData?){
        cityNameLbl.text = weatherResponse?.name
        if let tempValue = weatherResponse?.main?.temp{
            tempLbl.text = "\(String(format: "%.1f", tempValue - 273.15))"
        }
        weatherLbl.text = weatherResponse?.weather?[0].main
        if let humidityValue = weatherResponse?.main?.humidity{
            humidityLbl.text = "\(String(format: "%d", humidityValue))"
            
        }
    }
}
