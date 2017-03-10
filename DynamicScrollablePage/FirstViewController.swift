//
//  FirstViewController.swift
//  DynamicScrollablePage
//
//  Created by Øystein Myrmo on 08/03/2017.
//  Copyright © 2017 Øystein Myrmo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var containerViewHeightConstraint: NSLayoutConstraint!
    var dynamicView: DynamicEmbeddedViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if dynamicView != nil{
            dynamicView?.tableView.reloadData()
            let size = dynamicView?.tableView.contentSize.height
            //cheating on the 300 because the other views in that controller at 150 each
            containerViewHeightConstraint.constant = size! + 300
            self.view.updateConstraintsIfNeeded()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "ContainerViewSegue") {
            dynamicView = segue.destination as? DynamicEmbeddedViewController
        }
    }

}

