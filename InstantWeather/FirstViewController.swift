//
//  FirstViewController.swift
//  InstantWeather
//
//  Created by Rashii Henry on 10/25/17.
//  Copyright © 2017 Rashii Henry. All rights reserved.
//

import UIKit
import Alamofire

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate, UISearchBarDelegate {
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
    

    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        
        
    }
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        
        
    }
    
    //MARK Table View Delegate and Datasource.
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //
       let cell = self.weatherTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.descriptionBox.text = "\(cities[indexPath.row])\n \(Weather.sharedInstance.weatherDescriptions[indexPath.row])]"
        cell.iconImageView.image = UIImage(named: "0\(indexPath.row)d")
        
        
        //
        print(Weather.sharedInstance.weatherDescriptions)
        
        

        
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count //counts recent cities array
    }
    
    


}

