//
//  ViewController.swift
//  meteoPi
//
//  Created by Lukáš Stankovič on 20.07.16.
//  Copyright © 2016 Lukáš Stankovič. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        let htmlString:String! = "<iframe width='1100' height='708' seamless frameborder='0' scrolling='no' src='https://docs.google.com/spreadsheets/d/1E-ElrybFLzFDbhbJryf5kbKQk6J29jDipateSb64Tvs/pubchart?oid=1100784856&amp;format=interactive'></iframe>"

       /* let url = NSURL (string: "http://meteopi.stankoviclukas.cz");
        let requestObj = NSURLRequest(URL: url!);
        webView.loadRequest(requestObj);*/
        
        self.webView.frame = self.view.bounds
        self.webView.scalesPageToFit = true
        
        webView.loadHTMLString(htmlString, baseURL: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

