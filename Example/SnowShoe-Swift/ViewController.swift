//
//  ViewController.swift
//  SnowShoe-Swift
//
//  Created by mluedke2 on 08/25/2015.
//  Copyright (c) 2015 mluedke2. All rights reserved.
//

import UIKit
import SnowShoe_Swift

class ViewController: UIViewController {
  
  @IBOutlet var snowShoeView: SnowShoeView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    snowShoeView.appKey = "YOUR_APP_KEY"
    snowShoeView.appSecret = "YOUR_APP_SECRET"
    snowShoeView.delegate = self
  }
}

extension ViewController: SnowShoeDelegate {
  
  func onStampRequestMade() {
    // start activity indicator, etc
  }

  func onStampResult(_ result: SnowShoeResult?) {
    if let result = result {
      if let stamp = result.stamp {
        // handle stamp
        print("stamp found! serial: \(stamp.serial)")
      } else if let error = result.error {
        // handle snowshoe error
        print("\(error.message)")
      }
    } else {
      // handle request error
      print("There was an error, try again.")
    }
  }
}
