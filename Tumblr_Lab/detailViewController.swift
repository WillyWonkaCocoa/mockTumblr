//
//  detailViewController.swift
//  Tumblr_Lab
//
//  Created by William Gao on 10/18/19.
//  Copyright © 2019 codepath. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var index: Int!
    
    override func viewDidLoad() {
        label.text = ("You tapped the cell at index \(index ?? 5)")
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
