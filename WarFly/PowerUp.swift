//
//  PowerUp.swift
//  WarFly
//
//  Created by vcslvttv on 18/07/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import SpriteKit


class PowerUp: SKSpriteNode {
    
    fileprivate let initialSize = CGSize(width: 52, height: 52)
    fileprivate let textureAtlas: SKTextureAtlas!
    fileprivate var textureNameBeginsWith = ""
    fileprivate var animationSpriteArray = [SKTexture]()
    
    init(textureAtlas: SKTextureAtlas) {
        self.textureAtlas = textureAtlas
        let textureName = textureAtlas.textureNames.sorted()[0]
        let texture = textureAtlas.textureNamed(textureName)
        textureNameBeginsWith = String(textureName.dropLast(6))
        super.init(texture: texture, color: .clear, size: initialSize)
        self.setScale(0.7)
        self.name = "sprite"
        self.zPosition = 20
    }
    
    func startMovement() {
        permormRotation()
        
        let moveForward = SKAction.moveTo(y: -100, duration: 5)
        self.run(moveForward)
    }
    
    fileprivate func permormRotation() {
        for i in 1...15 {
            let number = String(format: "%02d", i)
            animationSpriteArray.append(SKTexture(imageNamed: textureNameBeginsWith + number.description))
        }
        
        SKTexture.preload(animationSpriteArray) {
            let rotation = SKAction.animate(with: self.animationSpriteArray, timePerFrame: 0.05, resize: true, restore: false)
            let rotationForever = SKAction.repeatForever(rotation)
            self.run(rotationForever)
        }
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
