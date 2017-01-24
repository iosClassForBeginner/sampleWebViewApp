//
//  ViewController.swift
//  sampleWebViewApp
//
//  Created by Muneharu Onoue on 2017/01/24.
//  Copyright © 2017年 Muneharu Onoue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myweb: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let url = URL(string: "https://www.google.co.jp/")
        let request = URLRequest(url: url!)
        self.myweb.loadRequest(request)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

