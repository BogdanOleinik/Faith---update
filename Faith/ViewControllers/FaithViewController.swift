//
//  FaithViewController.swift
//  Faith
//
//  Created by Олейник Богдан on 09.03.2022.
//

import UIKit

class FaithViewController: UIViewController {

    var prayers: Prayers!
    
    @IBOutlet weak var titleFaith: UILabel!
    @IBOutlet weak var faith: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleFaith.text = prayers.name
        faith.text = prayers.completed
    }
    @IBAction func cancelButton() {
        dismiss(animated: true)
    }
}
