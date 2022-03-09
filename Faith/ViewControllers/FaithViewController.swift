//
//  FaithViewController.swift
//  Faith
//
//  Created by Олейник Богдан on 09.03.2022.
//

import UIKit

class FaithViewController: UIViewController {

    @IBOutlet weak var titleFaith: UILabel!
    @IBOutlet weak var faith: UILabel!
    
    var titleT = ""
    var faithName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleFaith.text = "\(titleT)"
        faith.text = "\(faithName)"
        
    }
}
