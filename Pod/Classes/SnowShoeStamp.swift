//
//  SnowShoeStamp.swift
//  Pods
//
//  Created by Matt Luedke on 8/25/15.
//
//

import ObjectMapper

public struct SnowShoeStamp: Mappable {
  public var serial: String!
  
  public init?(_ map: Map) {}
  
  mutating public func mapping(map: Map) {
    serial <- map["serial"]
  }
}
