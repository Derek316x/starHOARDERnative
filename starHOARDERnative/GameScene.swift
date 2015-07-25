//
//  GameScene.swift
//  starHOARDERnative
//
//  Created by Z on 7/25/15.
//  Copyright (c) 2015 dereknetto. All rights reserved.
//

import SpriteKit
import CoreMotion

class GameScene: SKScene {
    
    let manager = CMMotionManager()
    
    override func didMoveToView(view: SKView) {
        manager.accelerometerUpdateInterval = 0.01
        manager.startAccelerometerUpdatesToQueue(NSOperationQueue.mainQueue(), withHandler: { (data: CMAccelerometerData!, error: NSError!) -> Void in
            let a = data.acceleration
            let x = NSString(format: "%.2f", a.x)
            let y = NSString(format: "%.2f", a.y)
            println("x: \(x), y: \(y)")
        })
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        
    }
}
