//
//  Weather.swift
//  InstantWeather
//
//  Created by Rashii Henry on 10/26/17.
//  Copyright © 2017 Rashii Henry. All rights reserved.
//

import Foundation
import Alamofire


struct Weather {

    static let sharedInstance = Weather()
    
    
    func fetchData(){
        
        //send a request to the URL for JSON data.
        //all data from request is only available within the scope of the response closure.
        Alamofire.request("api.openweathermap.org/data/2.5/forecast?id=524901").responseJSON { response in
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
