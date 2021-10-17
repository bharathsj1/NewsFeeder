//
//  MainTableViewCell.Swift
//  News Feeder
//
//  Created by Bharath S J on 17/10/21.
//  Copyright © 2021 Bharath S J. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        title.numberOfLines = 2
        reporter.numberOfLines = 2
        
        title.font = UIFont.boldSystemFont(ofSize: 18)
        // Initialization code
    }
    
    @IBOutlet var title: UILabel!
    
    @IBOutlet var reporter: UILabel!
    
    @IBOutlet var date: UILabel!
    
    
    
}


