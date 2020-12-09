//
//  UIFont+Ext.swift
//  MyTask
//
//  Created by mohamed sayed on 12/9/20.
//

import UIKit

extension UIFont{
    
    class func OpenSansBold(size: CGFloat) -> UIFont{
        guard let font = UIFont(name: "OpenSans-Bold", size: size) else{
            return UIFont()
        }
        return font
    }
    
    class func OpenSansLight(size: CGFloat) -> UIFont{
        guard let font = UIFont(name: "OpenSans-Light", size: size) else{
            return UIFont()
        }
        return font
    }
    
    class func OpenSansSimeBold(size: CGFloat) -> UIFont{
        guard let font = UIFont(name: "OpenSans-SemiBold", size: size) else{
            return UIFont()
        }
        return font
    }
    
    class func OpenSansRegular(size: CGFloat) -> UIFont{
        guard let font = UIFont(name: "OpenSans-Regular", size: size) else{
            return UIFont()
        }
        return font
    }
    
    class func nYRegular(size: CGFloat) -> UIFont{
        guard let font = UIFont(name: "Chomsky", size: size) else{
            return UIFont()
        }
        return font
    }
    
  
}
