//
//  ViewController.swift
//  DeliverMore.ca
//
//  Created by Birch on 2022-07-18.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    let webView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webView)
        
        guard let url = URL(string: "https://delivermore.ca") else {
            return
            
        }
        webView.load(URLRequest(url: url))
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }


}

