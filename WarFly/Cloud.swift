//
//  Island.swift
//  WarFly
//
//  Created by vcslvttv on 15/07/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import SpriteKit
import GameplayKit

protocol GameBackgroundSpriteable {
    static func populateSprite(at point: CGPoint) -> Self
}

final class Cloud: SKSpriteNode, GameBackgroundSpriteable {

    static func populateSprite(at point: CGPoint) -> Cloud {
        
        let cloudImageName = configureName()
        let cloud = Cloud(imageNamed: cloudImageName)
        cloud.setScale(randomScaleFactor)
        cloud.position = point
        cloud.zPosition = 10
        
        return cloud
    }
    
    fileprivate static func configureName() -> String {
        
        let distribution = GKRandomDistribution(lowestValue: 1, highestValue: 3)
        let randomNumber = distribution.nextInt()
        let imageName = "cl" + "\(randomNumber)"
        
        return imageName
    }
    
    fileprivate static var randomScaleFactor: CGFloat {
        let distribution = GKRandomDistribution(lowestValue: 20, highestValue: 30)
        let randomNumber = CGFloat(distribution.nextInt()) / 10
        
        return randomNumber
    }
}
