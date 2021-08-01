//
//  ViewController.swift
//  Mobiquity_Code_Challange
//
//  Created by Virendra Gupta on 31/07/21.
//

import UIKit

class ViewController: UIViewController, WeatherViewModelDelegate {

    private var weatherViewModel = WeatherViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        weatherViewModel.delegate = self
        
        weatherViewModel.ServiceCallToGetData()
    }
    
    
    func didReceiveWeatherResponse(weatherResponse: TodayForcastData?) {
        print(weatherResponse!)
        
    }


}

