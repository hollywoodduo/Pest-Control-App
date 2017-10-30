//
//  GameScene.swift
//  PestControl
//
//  Created by Matthew J. Perkins on 10/30/17.
//  Copyright © 2017 Matthew J. Perkins. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
  var background: SKTileMapNode!
  var player = Player()
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    background = childNode(withName: "background") as! SKTileMapNode
  }
  override func didMove(to view: SKView) {
    addChild(player)
  }
}

