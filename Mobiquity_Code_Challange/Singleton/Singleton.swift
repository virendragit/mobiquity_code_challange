//
//  Singleton.swift
//  Mobiquity_Code_Challange
//
//  Created by Virendra Gupta on 02/08/21.
//


class CityManager{
    
    static let shared = CityManager()
    
    var selectedCityName: String?
    //Initializer access level change now
    private init(){}
    
    
}

