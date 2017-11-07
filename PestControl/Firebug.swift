//
//  Firebug.swift
//  PestControl
//
//  Created by Matthew J. Perkins on 11/7/17.
//  Copyright © 2017 Matthew J. Perkins. All rights reserved.
//

import SpriteKit

class Firebug: Bug {
  
  required init?(coder aDecoder: NSCoder) {
    fatalError()
  }
  
  override init() {
    super.init()
    name = "Firebug"
    color = .red
    colorBlendFactor = 0.8
    physicsBody?.categoryBitMask = PhysicsCategory.Firebug
  }
}
