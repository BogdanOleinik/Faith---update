//
//  Model.swift
//  Faith
//
//  Created by Олейник Богдан on 07.02.2022.
//

import UIKit

struct Saints {
    let image: UIImage!
    let name: String
    let prayers: [Prayers]
    
    static func getSaints() -> [Saints] {
        [
            Saints(
                image: UIImage(named: "everyDay"),
                name: "На каждый день",
                prayers: [
                    Prayers(
                        name: "Отче наш",
                        topic: "other",
                        completed: DataManagerMain.shared.otcheNash),
                    Prayers(
                        name: "Символ веры",
                        topic: "other",
                        completed: DataManagerMain.shared.symbolVeri),
                    Prayers(
                        name: "Лука Войно-Ясеневский, об исцелении",
                        topic: "other",
                        completed: DataManagerMain.shared.lukaVoynoYasnevsky),
                    Prayers(
                        name: "Молитва Божьей Матери",
                        topic: "other",
                        completed: DataManagerMain.shared.bojyaMater),
                    Prayers(
                        name: "Молитва Троице",
                        topic: "other",
                        completed: DataManagerMain.shared.troitsya),
                    Prayers(
                        name: "Георгий Победоносец",
                        topic: "other",
                        completed: DataManagerMain.shared.georgiyPobedonos)
                ]),
            
            Saints(
                image: UIImage(named: "matrona"),
                name: "Матрона Московская",
                prayers: [
                    Prayers(
                        name: "Молитва Матроне Московской о семье",
                        topic: "family",
                        completed: DataManagerMatrona.shared.prayerFamily),
                    Prayers(
                        name: "Молитва Матроне Московской об исцелении от болезни",
                        topic: "health",
                        completed: DataManagerMatrona.shared.prayerHealth),
                    Prayers(
                        name: "Молитва Матроне Московской о беременности, о зачатии ребенка",
                        topic: "child",
                        completed: DataManagerMatrona.shared.prayersChild),
                    Prayers(
                        name: "Молитва святой Матроне Московской о даровании работы",
                        topic: "work",
                        completed: DataManagerMatrona.shared.prayersWork),
                    Prayers(
                        name: "Сдача экзаменов",
                        topic: "study",
                        completed: DataManagerMatrona.shared.prayersStudy)
                ]),
            
            Saints(
                image: UIImage(named: "bogoroditsya"),
                name: "Пресвятая Богородица",
                prayers: [
                    Prayers(
                        name: "Молитва богородице",
                        topic: "other",
                        completed: DataManagerBogoroditsya.shared.bogoroditsya),
                    Prayers(
                        name: "О семье",
                        topic: "family",
                        completed: DataManagerBogoroditsya.shared.prayerFamilly),
                    Prayers(
                        name: "О исцелении",
                        topic: "health",
                        completed: DataManagerBogoroditsya.shared.prayerHealth),
                    Prayers(
                        name: "О зачании",
                        topic: "child",
                        completed: DataManagerBogoroditsya.shared.prayersChild),
                    Prayers(
                        name: "О учебе",
                        topic: "study",
                        completed: DataManagerBogoroditsya.shared.prayersStudy),
                    Prayers(
                        name: "В дорогу",
                        topic: "road",
                        completed: DataManagerBogoroditsya.shared.inRoad)
                ]),
            
            
            Saints(
                image: UIImage(named: "chudotvorets"),
                name: "Николай Чудотворец",
                prayers: [
                    Prayers(
                        name: "Об исцелении",
                        topic: "health",
                        completed: DataManagerChudotvorets.shared.prayerHealth),
                    Prayers(
                        name: "За детей",
                        topic: "child",
                        completed: DataManagerChudotvorets.shared.prayersChild),
                    Prayers(
                        name: "Молитва о работе",
                        topic: "work",
                        completed: DataManagerChudotvorets.shared.prayersWork),
                    Prayers(
                        name: "В дорогу",
                        topic: "road",
                        completed: DataManagerChudotvorets.shared.inRoad)
                ]),
            
            Saints(
                image: UIImage(named: "ksenya"),
                name: "Молитвы Ксении Петербургской",
                prayers: [
                    Prayers(
                        name: "О помощи в семье",
                        topic: "family",
                        completed: DataManagerKsenya.shared.prayerFamily),
                    Prayers(
                        name: "О зачатии ребенка",
                        topic: "child",
                        completed: DataManagerKsenya.shared.prayersChild),
                    Prayers(
                        name: "Молитва о работе",
                        topic: "work",
                        completed: DataManagerKsenya.shared.prayersWork)
                ]),
            
            
            Saints(
                image: UIImage(named: "radonejsky"),
                name: "Сергей Радонежский",
                prayers: [
                    Prayers(
                        name: "Молитва об исцелении",
                        topic: "health",
                        completed: DataManagerSergeyRadonejsky.shared.prayerHealth),
                    Prayers(
                        name: "О учебе",
                        topic: "study",
                        completed: DataManagerSergeyRadonejsky.shared.prayersStudy)
                ])
        ]
    }
}

struct Prayers {
    let name: String
    let topic: String
    let completed: String
}
