//
//  ViewController.swift
//  TestEnvironment
//
//  Created by Shalu Scaria on 2018-09-20.
//  Copyright © 2018 Shalu Scaria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let server_url = Environment().configuration(PlistKey.ServerURL)
        print(server_url)
    }


}

