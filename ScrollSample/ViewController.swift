//
//  ViewController.swift
//  ExpScroll
//
//  Created by Mar 9 on 2021/08/14.
//  
//

import UIKit

class ViewController: UIViewController {

    let shortText = "----+----1"
    let longText = """
----+----1
----+----2
----+----3
----+----4
----+----5
----+----6
----+----7
----+----8
----+----9
----+----10
"""
    
    @IBOutlet weak var title1: UILabel!
    @IBOutlet weak var desc1: UILabel!
    @IBOutlet weak var title2: UILabel!
    @IBOutlet weak var desc2: UILabel!
    @IBOutlet weak var title3: UILabel!
    @IBOutlet weak var desc3: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.desc1.text = shortText
        self.desc2.text = shortText
        self.desc3.text = shortText
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        adjust()
    }
    
    @IBAction func action1(_ sender: Any) {
        self.desc1.text = longText
        self.desc2.text = longText
        self.desc3.text = longText
        adjust()
    }
    
    @IBAction func action2(_ sender: Any) {
        self.desc1.text = shortText
        self.desc2.text = shortText
        self.desc3.text = shortText
        adjust()
    }
    
    func adjust() {
        self.view.layoutIfNeeded()
        self.scrollView.contentSize.height =
            self.desc3.frame.origin.y
            + self.desc3.frame.height
            + 20
    }
}

