//
//  Helper.swift
//  NewsFeeder
//
//  Created by Bharath S J on 17/10/21.
//  Copyright © 2021 Bharath S J. All rights reserved.
//

import UIKit


class Helper {
    
    let indicator = UIActivityIndicatorView()
    
    func loadInd(vc : UIViewController) {
        indicator.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        indicator.style = .gray
        indicator.center = vc.view.center
        vc.view.addSubview(indicator)
    }

    func showActIndicator() {
      
        indicator.startAnimating()
        
    }
    func stop() {
        indicator.stopAnimating()

    }
    
    
}
