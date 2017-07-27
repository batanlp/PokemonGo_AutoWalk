//
//  ViewController.swift
//  Pokemongo_Autowalk
//
//  Created by Nguyen Tan on 7/27/17.
//  Copyright © 2017 Nguyen Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let kURLScheme: String! = "com.googleusercontent.apps.848232511240-dmrj3gba506c9svge2p9gq35p1fg654p://"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnStartClick(_ sender: Any) {
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(NSURL(string: kURLScheme) as! URL, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(NSURL(string: kURLScheme) as! URL)
        }
    }

}

