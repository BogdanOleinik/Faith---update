//
//  HolidaysTableViewController.swift
//  Faith
//
//  Created by Олейник Богдан on 18.04.2022.
//

import UIKit

class HolidaysTableViewController: UITableViewController {

    let holidays = Holidays.getHolidaysList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 70
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        holidays.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "holidayCell", for: indexPath) as! HolidayTableViewCell
        let holiday = holidays[indexPath.row]
        
        cell.titleHoliday.text = holiday.title
        cell.dateHoliday.text = holiday.date
        cell.imageHoliday.image = UIImage(named: holiday.title)
        
        return cell
    }
}

    // MARK: - Table view delegate

