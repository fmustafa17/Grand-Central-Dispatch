//
//  DetailViewController.swift
//  Grand-Central-Dispatch
//
//  Created by Farhana Mustafa on 7/4/20.
//  Copyright © 2020 Farhana Mustafa. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    var webView: WKWebView!
    var detailItem: Petition?
    override func loadView() {
        webView = WKWebView()
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let detailItem = detailItem else { return }
        let html = """
                    <html>
                    <head>
                    <meta name="viewport" content="width=device-width, initialscale=1">
                    <style> body { font-size: 150%; } </style>
                    </head>
                    <body>
                    \(detailItem.body)
                    </body>
                    </html>
                    """
        webView.loadHTMLString(html, baseURL: nil)
    }
}
