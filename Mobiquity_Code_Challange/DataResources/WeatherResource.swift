//
//  WeatherResource.swift
//  Mobiquity_Code_Challange
//
//  Created by Virendra Gupta on 01/08/21.
//

import Foundation

struct WeatherResource {
    
    let httpUtility = HttpUtility()
    
    func getTodayForcast(cityname: String , completion: @escaping (_ result: TodayForcastData?) -> Void){
        let todayPath = ApiEndpoints.todayForcast
        let querypath = "q=\(cityname)&appid=\(Constants.apiKey)"
        let finalUrl  = todayPath + "?" + querypath
        httpUtility.fetchData(urlString: finalUrl, resultType: TodayForcastData.self) { weatherResponse in
            _ = completion(weatherResponse)
        }
    }
    
    func getfiveDayForcast(completion: @escaping (_ result: FiveDayForcast?) -> Void){
        httpUtility.fetchData(urlString: ApiEndpoints.fiveDayForcast, resultType: FiveDayForcast.self) { weatherResponse in
            _ = completion(weatherResponse)
        }
    }
    
    
    }
    

