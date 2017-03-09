//
//  FirstViewController.swift
//  DynamicScrollablePage
//
//  Created by Øystein Myrmo on 08/03/2017.
//  Copyright © 2017 Øystein Myrmo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "ContainerViewSegue") {
            
        }
    }

}

