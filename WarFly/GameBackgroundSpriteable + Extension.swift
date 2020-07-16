//
//  GameBackgroundSpriteable + Extension.swift
//  WarFly
//
//  Created by vcslvttv on 16/07/2020.
//  Copyright © 2020 MAC. All rights reserved.
//
import SpriteKit
import GameplayKit

protocol GameBackgroundSpriteable {
    static func populate() -> Self
    static func randomPoint() -> CGPoint
}

extension GameBackgroundSpriteable {
    static func randomPoint() -> CGPoint {
        let screen = UIScreen.main.bounds
        let distribution = GKRandomDistribution(lowestValue: Int(screen.size.height) + 100, highestValue: Int(screen.size.height) + 200)
        let y = CGFloat(distribution.nextInt())
        let x = CGFloat(GKRandomSource.sharedRandom().nextInt(upperBound: Int(screen.size.width)))
        
        return CGPoint(x: x, y: y)
    }
}
