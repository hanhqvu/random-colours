//
//  File.swift
//  Random Colours
//
//  Created by Hanh Vu on 2022/12/30.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        let randomColour = UIColor(red: CGFloat.random(in: 0...1),
                                   green: CGFloat.random(in: 0...1),
                                   blue: CGFloat.random(in: 0...1),
                                   alpha: 1)
        return randomColour
    }
}
