//
//  SnowShoeDateTransform.swift
//  Pods
//
//  Created by Matt Luedke on 8/25/15.
//
//

import Foundation
import ObjectMapper

public class SnowShoeDateTransform: TransformType {
  
  let dateFormat = "yyyy-MM-dd HH:mm:ss.SSSSSS" // "2015-03-24 11:27:33.014149"
  
  public init() {}
  
  public func transformFromJSON(value: AnyObject?) -> NSDate? {
    if let stringValue = value as? String {
      let dateFormatter = NSDateFormatter()
      dateFormatter.dateFormat = dateFormat
      return dateFormatter.dateFromString(stringValue)
    }
    return nil
  }
  
  public func transformToJSON(value: NSDate?) -> String? {
    if let date = value {
      let dateFormatter = NSDateFormatter()
      dateFormatter.dateFormat = dateFormat
      return dateFormatter.stringFromDate(date)
    }
    return nil
  }
}
