//
//  Player.swift
//  PestControl
//
//  Created by Matthew J. Perkins on 10/30/17.
//  Copyright © 2017 Ray Wenderlich. All rights reserved.
//

import SpriteKit

class Player: SKSpriteNode {
  required init?(coder aDecoder: NSCoder) {
    fatalError("Use init()")
  }
  
  init() {
    let texture = SKTexture(imageNamed: "player_ft1")
    super.init(texture: texture, color: .white, size: texture.size())
    name = "Player"
    zPosition = 50
    
  }
}
