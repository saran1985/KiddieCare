//
//  ViewController.swift
//  Kiddiecare
//
//  Created by Saranya ramamoorthy on 11/05/20.
//  Copyright © 2020 Saranya ramamoorthy. All rights reserved.
//
import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {

    @IBOutlet weak var webview: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL (string: "https://reachwebdemo.com/2020/02/kiddiecare/")
               let requestObj = URLRequest(url: url!)
               webview.navigationDelegate = self
               webview.load(requestObj)
               webview.allowsBackForwardNavigationGestures = true
      
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        webview.frame.size.height = 1
        webView.frame.size = webView.sizeThatFits(CGSize.zero)
    }


}

