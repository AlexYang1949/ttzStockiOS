//
//  ViewController.swift
//  ttzStock
//
//  Created by shunweiwuxian on 16/6/12.
//  Copyright © 2016年 ttz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let session = NSURLSession.sharedSession()
        let request = NSURLRequest(URL: NSURL(string: "http://172.30.8.82:8080/stock")!)
        let task = session.dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in

            
            if let jsonData = data {
                    let jsonDict = try? NSJSONSerialization.JSONObjectWithData(jsonData, options: .MutableContainers)
                    print("D = " + String(jsonDict!.valueForKey("D")))
            }
            
        })
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

