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
        DispatchQueue.main.async {
            cell.imageHoliday.image = UIImage(named: holiday.title)
        }
        
        return cell
    }
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let holiday = holidays[indexPath.row]
        performSegue(withIdentifier: "showHoliday", sender: holiday)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let holidayVC = segue.destination as? DescriptionViewController else { return }
        holidayVC.holiday = sender as? Holidays
    }
}
    
