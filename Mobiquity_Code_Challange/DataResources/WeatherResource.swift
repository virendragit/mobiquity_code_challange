//
//  WeatherResource.swift
//  Mobiquity_Code_Challange
//
//  Created by Virendra Gupta on 01/08/21.
//

import Foundation

struct WeatherResource {
    
    let httpUtility = HttpUtility()
    
    func getTodayForcast(completion: @escaping (_ result: TodayForcastData?) -> Void){
        httpUtility.fetchData(urlString: ApiEndpoints.todayForcast, resultType: TodayForcastData.self) { weatherResponse in
            _ = completion(weatherResponse)
        }
    }
    
    func getfiveDayForcast(completion: @escaping (_ result: FiveDayForcast?) -> Void){
        httpUtility.fetchData(urlString: ApiEndpoints.fiveDayForcast, resultType: FiveDayForcast.self) { weatherResponse in
            _ = completion(weatherResponse)
        }
    }
    
    
    }
    

