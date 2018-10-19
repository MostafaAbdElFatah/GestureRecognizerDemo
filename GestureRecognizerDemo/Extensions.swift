//
//  Extentions.swift
//  War
//
//  Created by Mostafa AbdEl Fatah on 10/17/18.
//  Copyright © 2018 Mostafa. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func randomColor() -> UIColor {
        return UIColor(red: randomFloat(), green: randomFloat(), blue: randomFloat(), alpha: 1.0)
    }
    
    private class func randomFloat() -> CGFloat {
        return CGFloat(arc4random_uniform(255)) / 255.0
    }
    
}
