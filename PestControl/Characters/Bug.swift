//
//  Bug.swift
//  PestControl
//
//  Created by Matthew J. Perkins on 11/6/17.
//  Copyright © 2017 Matthew J. Perkins. All rights reserved.
//


import Foundation
import SpriteKit

enum BugSettings {
  static let bugDistance: CGFloat = 16
}

class Bug: SKSpriteNode {
  
  var animations: [SKAction] = []
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("Use init()")
  }
  
  init() {
    let texture = SKTexture(pixelImageNamed: "bug_ft1")
    super.init(texture: texture, color: .white,
               size: texture.size())
    name = "Bug"
    zPosition = 50
    
    physicsBody = SKPhysicsBody(circleOfRadius: size.width/2)
    physicsBody?.categoryBitMask = PhysicsCategory.Bug
    physicsBody?.restitution = 0.5
    physicsBody?.linearDamping = 0.5
    physicsBody?.friction = 0
    physicsBody?.allowsRotation = false
    
    createAnimations(character: "bug")
  }
  
  func move() {
    let randomX = CGFloat(Int.random(min: -1, max: 1))
    let randomY = CGFloat(Int.random(min: -1, max: 1))
  
    let vector = CGVector(dx: randomX * BugSettings.bugDistance, dy: randomY * BugSettings.bugDistance)
    
    let moveBy = SKAction.move(by: vector, duration: 1)
    let moveAgain = SKAction.run(move)
    
    let direction = animationDirection(for: vector)
    
    if direction == .left {
      xScale = abs(xScale)
    } else if direction == .right {
      xScale = -abs(xScale)
    }
    
    run(animations[direction.rawValue], withKey: "animation")
    run(SKAction.sequence([moveBy,moveAgain]))
  }
  
  func checkDirection() {
    guard let physicsBody = physicsBody else { return }
    // 1
    let direction =
      animationDirection(for: physicsBody.velocity)
    // 2
    if direction == .left {
      xScale = abs(xScale)
    }
    if direction == .right {
      xScale = -abs(xScale)
    }
    // 3
    run(animations[direction.rawValue], withKey: "animation")
  }
  
  func die() {
    removeAllActions()
    texture = SKTexture(pixelImageNamed: "bug_lt1")
    yScale = -1
    physicsBody = nil
    run(SKAction.sequence([SKAction.fadeOut(withDuration: 3),SKAction.removeFromParent()]))
  }
}

extension Bug : Animatable {}


