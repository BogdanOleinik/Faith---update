//
//  ViewController.swift
//  Faith
//
//  Created by Олейник Богдан on 19.04.2022.
//

import UIKit

class DescriptionViewController: UIViewController {

    var holiday: Holidays!
    
    @IBOutlet weak var imageDescription: UIImageView!
    @IBOutlet weak var textDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageDescription.image = UIImage(named: holiday.title)
        textDescription.text = holiday.description
    }
    
    @IBAction func cancelButton() {
        dismiss(animated: true)
    }
}
