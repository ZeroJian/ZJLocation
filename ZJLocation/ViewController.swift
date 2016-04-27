//
//  ViewController.swift
//  ZJLocation
//
//  Created by ZeroJianMBP on 16/4/20.
//  Copyright © 2016年 ZeroJian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var label: UILabel!
  
//  var zjLocation = ZJLocation()
  

  override func viewDidLoad() {
    super.viewDidLoad()
    
    ZJLocationService.startLocation()
    
    ZJLocationService.sharedManager.didUpdateLocation = { [weak self] location in
      self?.label.text = "Location: \(location.coordinate.latitude)  \(location.coordinate.longitude)"
    }
    
    ZJLocationService.time = 120
  }
  

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

