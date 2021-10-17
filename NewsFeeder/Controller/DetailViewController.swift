//
//  DetailNewsController.swift
//  News Feeder
//
//  Created by Bharath S J on 16/10/21.
//  Copyright © 2021 Bharath S J. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController, WKUIDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createWebView()
        loadURL()
        
    }
    
    var input : String?
    
    @IBOutlet var webView: WKWebView!
    
    func createWebView(){
        webView.uiDelegate=self
        
    }
    
    func loadURL(){
        let url = URL(string: input ?? defaultURL)
        let request = URLRequest(url: url!)
        webView.load(request)
        
    }
}


