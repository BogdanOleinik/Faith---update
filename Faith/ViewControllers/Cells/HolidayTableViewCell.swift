//
//  HolidayTableViewCell.swift
//  Faith
//
//  Created by Олейник Богдан on 19.04.2022.
//

import UIKit

class HolidayTableViewCell: UITableViewCell {

    @IBOutlet weak var imageHoliday: UIImageView! {
        didSet {
            imageHoliday.contentMode = .scaleAspectFill
            imageHoliday.clipsToBounds = true
            imageHoliday.layer.cornerRadius = imageHoliday.frame.height / 2
            imageHoliday.backgroundColor = .white
        }
    }
    @IBOutlet weak var titleHoliday: UILabel!
    @IBOutlet weak var dateHoliday: UILabel!

}
