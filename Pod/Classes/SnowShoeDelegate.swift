//
//  SnowShoeDelegate.swift
//  Pods
//
//  Created by Matt Luedke on 8/27/15.
//
//

public protocol SnowShoeDelegate {
  func onStampRequestMade()
  func onStampResult(_ result: SnowShoeResult?)
}
