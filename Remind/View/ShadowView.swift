//
//  ShadowView.swift
//  Remind
//
//  Created by James Volmert on 8/12/19.
//  Copyright © 2019 James Volmert. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        layer.shadowPath = CGPath(rect: layer.bounds, transform: nil)
        layer.shadowColor = #colorLiteral(red: 0.0983113721, green: 0.09760826081, blue: 0.09885454923, alpha: 1)
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.shadowOpacity = 1
        layer.shadowRadius = 5
        layer.cornerRadius  = 5
        
    }

}
