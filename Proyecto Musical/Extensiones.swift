//
//  Extensiones.swift
//  Proyecto Musical
//
//  Created by David Viloria Ortega on 22/12/21.
//

import UIKit

@IBDesignable extension UIButton{
    
    @IBInspectable var borderWidth: CGFloat{
        set {
            layer.borderWidth = newValue
        }
        
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat{
        set {
            layer.cornerRadius = newValue
        }
        
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor?{
        set {
            guard let uiColor = newValue else {return} //Intenta crear uiColor a partir de el newValue del borderColor
            layer.borderColor = uiColor.cgColor
        }
        
        get {
            guard let color = layer.borderColor else {return nil}
            return UIColor(cgColor: color)
        }
    }
    
    
}
