//
//  News.swift
//  News Feeder
//
//  Created by Bharath S J on 16/10/21.
//  Copyright © 2021 Bharath S J. All rights reserved.
//

// Data Model for News

import Foundation

struct News : Codable {
    let results : [Results]?
}
struct Results  : Codable {
    let url : String?
    let byline : String?
    let title : String?
    let published_date : String?
}
