//
//  BackgroundTask.swift
//  ZJBatterySaveLocation
//
//  Created by ZeroJianMBP on 16/4/19.
//  Copyright © 2016年 ZeroJian. All rights reserved.
//

import UIKit

class BackgroundTask {
  
  var taskInvalid = UIBackgroundTaskInvalid
  var tasking = false
  var timeOut = false
  
  func registerBackgroundTask() {
    tasking = true
    taskInvalid = UIApplication.sharedApplication().beginBackgroundTaskWithExpirationHandler({ 
      [unowned self] in
      self.timeOut = true
      self.endBackgroundTask()
    })
    ZJLocationService.stopLocation()
    print("register backgroundtask")
  }
  
  func endBackgroundTask() {
    if timeOut {
      ZJLocationService.startLocation()
    }
    tasking = false
    UIApplication.sharedApplication().endBackgroundTask(taskInvalid)
    taskInvalid = UIBackgroundTaskInvalid
    print("end backgroundtask")
  }
  
}
