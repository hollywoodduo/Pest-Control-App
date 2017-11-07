//
//  Types.swift
//  PestControl
//
//  Created by Matthew J. Perkins on 10/30/17.
//  Copyright © 2017 Matthew J. Perkins. All rights reserved.
//

import Foundation

struct PhysicsCategory {
  static let None: UInt32 = 0
  static let All: UInt32 = 0xFFFFFFFF
  static let Edge: UInt32 = 0b1
  static let Player: UInt32 = 0b10
  static let Bug: UInt32 = 0b100
  static let Firebug: UInt32 = 0b1000
  static let Breakable: UInt32 = 0b10000
}

enum Direction: Int {
  case forward = 0, backward, left, right
  
}

typealias TileCoordinates = (column: Int, row: Int)
