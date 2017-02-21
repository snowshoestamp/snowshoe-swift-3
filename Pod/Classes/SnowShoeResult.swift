//
//  SnowShoeResult.swift
//  Pods
//
//  Created by Matt Luedke on 8/25/15.
//
//

import ObjectMapper

public struct SnowShoeResult: Mappable {
  public var created: Date!
  public var error: SnowShoeError?
  public var receipt: String!
  public var secure: Bool!
  public var stamp: SnowShoeStamp?
  
  public init?(map: Map) {}
  
  mutating public func mapping(map: Map) {
    created <- (map["created"], SnowShoeDateTransform())
    error <- map["error"]
    receipt <- map["receipt"]
    secure <- map["secure"]
    stamp <- map["stamp"]
  }
}


