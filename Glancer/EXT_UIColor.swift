//
//  EXT_UIColor.swift
//  Glancer
//
//  Created by Dylan Hanson on 1/6/18.
//  Copyright © 2018 Dylan Hanson. All rights reserved.
//

import Foundation
import UIKit

extension UIColor
{
	convenience init(_ hexString: String)
	{
		if let rgbValue = UInt(hexString, radix: 16)
		{
			let red   =  CGFloat((rgbValue >> 16) & 0xff) / 255
			let green =  CGFloat((rgbValue >>  8) & 0xff) / 255
			let blue  =  CGFloat((rgbValue      ) & 0xff) / 255
			self.init(red: red, green: green, blue: blue, alpha: 1.0)
		} else
		{
			self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
		}
	}
}
