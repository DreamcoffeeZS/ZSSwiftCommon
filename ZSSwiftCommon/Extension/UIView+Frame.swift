//
//  UIView+Properties.swift
//  SwiftProject
//
//  Created by zhoushuai on 17/6/26.
//
//

import Foundation
import UIKit

//扩展UIView:获取view的属性

extension UIView{
    
   public var origin:CGPoint{
        return self.frame.origin
    }
    
    public var size:CGSize{
        return self.frame.size
    }
    
    //MARK: - 各个顶点坐标
    public var topLeft:CGPoint{
        return self.origin
    }
    
   public var topRight:CGPoint{
        return CGPoint(x: self.frame.maxX, y: self.frame.minY)
    }
    
    public var bottomLeft:CGPoint{
        return CGPoint(x: self.frame.minX, y: self.frame.maxY)
    }
    
   public var bottomRight:CGPoint{
        return CGPoint(x: self.frame.maxX, y: self.frame.maxY)
    }
    
    //MARK: - 上左下右的位置
    //上
    public var top:CGFloat{
        get{
            return self.frame.origin.y
        }
        
        set{
            var newFrame = self.frame
            newFrame.origin.y = newValue
            self.frame = newFrame
        }
    }
    //左
    public var left:CGFloat{
        get{
            return self.frame.origin.x
        }
        
        set{
            var newFrame = self.frame
            newFrame.origin.x = newValue
            self.frame = newFrame
        }
    }

    //下
   public var bottom:CGFloat{
        get{
            return self.frame.maxY
        }
        
        set{
            var newFrame = self.frame
            newFrame.origin.y = newValue - self.height
            self.frame = newFrame
        }
    }

    
    //右
    public var right:CGFloat{
        get{
            return self.frame.maxX
        }
        set{
            var newFrame = self.frame
            newFrame.origin.x = newValue - self.width
            self.frame = newFrame
        }
    }
    


    //MARK: - 宽和高的获取与设置
   public var height:CGFloat{
        get{
            return self.frame.size.height
        }
        set{
            var newFrame = self.frame
            newFrame.size.height = newValue
            self.frame = newFrame
        }
    }
    
    public var width:CGFloat{
        get{
            return self.frame.size.width
        }
        set{
            var newFrame = self.frame
            newFrame.size.width = newValue
            self.frame = newFrame
        }
    }
    
}
