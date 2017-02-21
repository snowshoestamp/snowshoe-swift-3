//
//  SnowShoeError.swift
//  Pods
//
//  Created by Matt Luedke on 8/25/15.
//
//

import ObjectMapper

public struct SnowShoeError: Mappable {
  public var code: Int!
  public var message: String!
  
  public init?(map: Map) {}
  
  mutating public func mapping(map: Map) {
    code <- map["code"]
    message <- map["message"]
  }
}
