//
//  WeatherResource.swift
//  Mobiquity_Code_Challange
//
//  Created by Virendra Gupta on 01/08/21.
//

import Foundation

struct WeatherResource {
    func getTodayForcast(completion: @escaping (_ result: TodayForcastData?) -> Void){
        let httpUtility = HttpUtility()
   
        httpUtility.fetchData(urlString: ApiEndpoints.todayForcast, resultType: TodayForcastData.self) { weatherResponse in
            _ = completion(weatherResponse)
        }
    

    }
    
//    func getfiveDayForcast(completion: @escaping (_ result: TodayForcast?) -> Void){
//        
//    }
    
    }
    

