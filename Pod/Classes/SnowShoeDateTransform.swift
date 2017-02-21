//
//  SnowShoeDateTransform.swift
//  Pods
//
//  Created by Matt Luedke on 8/25/15.
//
//

import Foundation
import ObjectMapper

open class SnowShoeDateTransform: TransformType {
  
  let dateFormat = "yyyy-MM-dd HH:mm:ss.SSSSSS" // "2015-03-24 11:27:33.014149"
  
  public init() {}
  
  open func transformFromJSON(_ value: Any?) -> Date? {
    if let stringValue = value as? String {
      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = dateFormat
      return dateFormatter.date(from: stringValue)
    }
    return nil
  }
  
  open func transformToJSON(_ value: Date?) -> String? {
    if let date = value {
      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = dateFormat
      return dateFormatter.string(from: date)
    }
    return nil
  }
}
