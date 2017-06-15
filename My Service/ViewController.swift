//
//  ViewController.swift
//  My Service
//
//  Created by Student18 on 6/15/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
  
        // Process Connected Http
        let urlPHP = "http://swiftcodingthai.com"
        //Change String to url String
        let myURL = URL(string: urlPHP)
        
        let request = NSMutableURLRequest(url: myURL!)
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
        
            data,responds, error in
            
            if error != nil {
                print("Error ==> \(error)")
                
            } else {
                if let unwrappendData = data{
                    
                    let dataString =NSString(data: unwrappendData; encoding:
                        String.Encoding.utf8.rawValue)
                    let strJSON = dataString as Any
                    print("strJASON ==> \(strJASON)")
                    
                    
                    
                }
            
            
        
        }   // if1
        task.resume()
        
        
        
        
        
        
        
        
    }   // Main Method

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }   // didRecive


}

