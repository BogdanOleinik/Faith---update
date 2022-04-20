//
//  Holidays.swift
//  Faith
//
//  Created by Олейник Богдан on 19.04.2022.
//

import Foundation

struct Holidays {
    let title: String
    let description: String
    let date: String
    
    static func getHolidaysList() -> [Holidays] {
        [
            Holidays(title: "Введение во храм Пресвятой Богородицы", description: DataManagerHolidays.shared.vvedenyeBogoroditsya, date: "4 декабря"),
            Holidays(title: "Рождество Христово", description: DataManagerHolidays.shared.rojdestvo, date: "7 января"),
            Holidays(title: "Крещение Господне", description: DataManagerHolidays.shared.kreshenie, date: "19 января"),
            Holidays(title: "Сретение Господне", description: DataManagerHolidays.shared.sretenie, date: "15 февраля"),
            Holidays(title: "Благовещение Пресвятой Богородицы", description: DataManagerHolidays.shared.blagoveshBogoroditsya, date: "7 апреля"),
            Holidays(title: "Воздвижение Креста Господня", description: DataManagerHolidays.shared.krest, date: "27 сентября"),
            Holidays(title: "Вознесение Господне", description: DataManagerHolidays.shared.voznesenie, date: "10 июня"),
            Holidays(title: "День Святой Троицы", description: DataManagerHolidays.shared.troitsya, date: "20 июня "),
            Holidays(title: "Преображение Господне", description: DataManagerHolidays.shared.preobrajenye, date: "19 августа"),
            Holidays(title: "Успение Богородицы", description: DataManagerHolidays.shared.uspenyeBogorodytsya, date: "28 августа"),
            Holidays(title: "Вход Господень в Иерусалим", description: DataManagerHolidays.shared.vhodGospoden, date: "25 апреля"),
            Holidays(title: "Рождество Пресвятой Богородицы", description: DataManagerHolidays.shared.bogoroditsya, date: "21 сентября")
        ]
    }
}
