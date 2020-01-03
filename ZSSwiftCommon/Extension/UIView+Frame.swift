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
    //MARK: - 布局参数
    public var origin:CGPoint{
        get{
            return self.frame.origin
        }
                     
        set{
            var newFrame = self.frame
            newFrame.origin = newValue
            self.frame = newFrame
        }
    }
    
    public var size:CGSize{
         get {
             return self.frame.size
         }
         
         set {
            var newFrame = self.frame
             newFrame.size = newValue
             self.frame = newFrame
         }
     }
    
    public var x:CGFloat {
          get {
            return self.frame.origin.x
          }
          
          set {
            var newFrame = self.frame
            newFrame.origin.x = newValue
            self.frame = newFrame
          }
    }
    
    public var y:CGFloat {
        get {
            return self.frame.origin.y
        }
            
        set {
            var newFrame = self.frame
            newFrame.origin.y = newValue
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
    
    public var centerX:CGFloat {
        get {
            return self.center.x
        }
        
        set {
            self.center = CGPoint(x: newValue, y: self.center.y)
        }
    }
    
    public var centerY:CGFloat {
         get {
             return self.center.y
         }
         
         set {
            self.center = CGPoint(x: self.center.x, y: newValue)
         }
     }
    
    
     //MARK: - 位置参数
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
    
  
     //MARK: - 顶点坐标
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
}
