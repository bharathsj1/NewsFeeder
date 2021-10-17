//
//  NewsFeederUITests.swift
//  NewsFeederUITests
//
//  Created by Bharath S J on 16/10/21.
//  Copyright © 2021 Bharath S J. All rights reserved.
//

import XCTest

class NewsFeederUITests: XCTestCase {

    var app : XCUIApplication!
    
    override func setUp() {
        super.setUp()
        app = XCUIApplication()
        app.launch()
      
    }
    
    override func tearDown() {
        app = nil
    }
    
    
    func testTableView() {
        
        let cell = app.tables.staticTexts["By BEN CASSELMAN"]
        
        expectation(for: NSPredicate(format: "exists == 1"), evaluatedWith: cell, handler: nil)
        waitForExpectations(timeout: 30, handler: nil)
        XCTAssertTrue(cell.exists)
    }
    
    func testNavigation() {
        
        app.tables.staticTexts["By BEN CASSELMAN"].tap()
        
        let page = app.navigationBars["NewsFeeder.DetailView"].buttons["NewsFeeder News"]
        expectation(for: NSPredicate(format: "exists == 1"), evaluatedWith: page, handler: nil)
        waitForExpectations(timeout: 30)
        XCTAssertTrue(page.exists)
        
        
    }
    
    
   

}
