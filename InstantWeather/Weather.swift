//
//  Weather.swift
//  InstantWeather
//
//  Created by Rashii Henry on 10/26/17.
//  Copyright © 2017 Rashii Henry. All rights reserved.
//

import Foundation
import Alamofire

//this struct of weather provides a sharedInstance of the weather object to make icon names and descriptions easily accessed.
struct Weather {

    static let sharedInstance = Weather()
    
    var weatherIcon : UIImage?
    var iconDayNames : [String] = ["01d","02d","03d","04d","09d","10d","11d","13d","50d"]
    
    var iconNightNames : [String] = ["01n","02n","03n","04n","09n","10n","11n","13n","50n"]
    
    var weatherDescriptions : [String] = ["clear sky", "few clouds","scattered clouds","broken clouds","shower rain","rain","thunderstorm","snow","mist"]
    
    func fetchData(){
        
        //send a request to the URL for JSON data.
        //all data from request is only available within the scope of the response closure.
        //current URL not returning any data. 
        Alamofire.request("http://samples.openweathermap.org/data/2.5/forecast?id=524901&appid=ee4aff959d1759ac8df3a37ad1d89076").responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            
            
            
            print("Response: \(String(describing: response.response))") // http url response
            
            
            
            print("Result: \(response.result)") // response serialization result
            
            
            
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
        }

    }
    
}
