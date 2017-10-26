//
//  FirstViewController.swift
//  InstantWeather
//
//  Created by Rashii Henry on 10/25/17.
//  Copyright © 2017 Rashii Henry. All rights reserved.
//

import UIKit
import Alamofire

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var cities = [String]()
    
    @IBOutlet var cityTextField: UITextField!
    @IBOutlet var weatherTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.weatherTableView.delegate = self
        self.weatherTableView.dataSource = self
        Weather.sharedInstance.fetchData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func searchLocation(_ sender: UIButton) {
        //search for locations weather in textfield.
        cities.append(self.cityTextField.text!)
        self.weatherTableView.reloadData()
        printRecents()
        
    }
    
    func printRecents(){
        print(cities)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.resignFirstResponder()
    }
    
    //Table View Delegate and Datasource.
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let cell = self.weatherTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }


}

