//
//  Background.swift
//  WarFly
//
//  Created by vcslvttv on 15/07/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import SpriteKit

class Background: SKSpriteNode {

    static func populateBackground(at point: CGPoint) -> Background {
        
        let background = Background(imageNamed: "background")
        background.position = point
        background.zPosition = 0
        
        return background
    }
    
}
