//
//  Model.swift
//  Faith
//
//  Created by Олейник Богдан on 07.02.2022.
//

struct Saints {
    let name: String
    let prayers: [Prayers]
    
    func getSaints() -> [Saints] {
        [
            Saints(
                name: "На каждый день",
                prayers: [
                    Prayers(
                        name: "Отче наш",
                        completed: DataManagerMain.shared.otcheNash),
                    Prayers(
                        name: "Символ веры",
                        completed: DataManagerMain.shared.symbolVeri),
                    Prayers(
                        name: "Лука Войно-Ясеневский, об исцелении",
                        completed: DataManagerMain.shared.lukaVoynoYasnevsky),
                    Prayers(
                        name: "Молитва Божьей Матери",
                        completed: DataManagerMain.shared.bojyaMater),
                    Prayers(
                        name: "Молитва Троице",
                        completed: DataManagerMain.shared.troitsya),
                    Prayers(
                        name: "Георгий Победоносец",
                        completed: DataManagerMain.shared.georgiyPobedonos)
                ]),
            
            Saints(
                name: "Матрона Московская",
                prayers: [
                    Prayers(
                        name: "Молитва Матроне Московской о семье",
                        completed: DataManagerMatrona.shared.prayerFamily),
                    Prayers(
                        name: "Молитва Матроне Московской об исцелении от болезни",
                        completed: DataManagerMatrona.shared.prayerHealth),
                    Prayers(
                        name: "Молитва Матроне Московской о беременности, о зачатии ребенка",
                        completed: DataManagerMatrona.shared.prayersChild),
                    Prayers(
                        name: "Молитва святой Матроне Московской о даровании работы",
                        completed: DataManagerMatrona.shared.prayersWork),
                    Prayers(
                        name: "Сдача экзаменов",
                        completed: DataManagerMatrona.shared.prayersStudy)
                ]),
            
            Saints(
                name: "Пресвятая Богородица",
                prayers: [
                    Prayers(
                        name: "Молитва богородице",
                        completed: DataManagerBogoroditsya.shared.bogoroditsya),
                    Prayers(
                        name: "О семье",
                        completed: DataManagerBogoroditsya.shared.prayerFamilly),
                    Prayers(
                        name: "О исцелении",
                        completed: DataManagerBogoroditsya.shared.prayerHealth),
                    Prayers(
                        name: "О зачании",
                        completed: DataManagerBogoroditsya.shared.prayersChild),
                    Prayers(
                        name: "О учебе",
                        completed: DataManagerBogoroditsya.shared.prayersStudy),
                    Prayers(
                        name: "В дорогу",
                        completed: DataManagerBogoroditsya.shared.inRoad)
                ]),
            
            
            Saints(
                name: "Николай Чудотворец",
                prayers: [
                    Prayers(
                        name: "Об исцелении",
                        completed: DataManagerChudotvorets.shared.prayerHealth),
                    Prayers(
                        name: "За детей",
                        completed: DataManagerChudotvorets.shared.prayersChild),
                    Prayers(
                        name: "Молитва о работе",
                        completed: DataManagerChudotvorets.shared.prayersWork),
                    Prayers(
                        name: "В дорогу",
                        completed: DataManagerChudotvorets.shared.inRoad)
                ]),
            
            Saints(
                name: "Молитвы Ксении Петербургской",
                prayers: [
                    Prayers(
                        name: "О помощи в семье",
                        completed: DataManagerKsenya.shared.prayerFamily),
                    Prayers(
                        name: "О зачатии ребенка",
                        completed: DataManagerKsenya.shared.prayersChild),
                    Prayers(
                        name: "Молитва о работе ",
                        completed: DataManagerKsenya.shared.prayersWork)
                ]),
            
            
            Saints(
                name: "Сергей Радонежский",
                prayers: [
                    Prayers(
                        name: "Молитва об исцелении",
                        completed: DataManagerSergeyRadonejsky.shared.prayerHealth),
                    Prayers(
                        name: "О учебе",
                        completed: DataManagerSergeyRadonejsky.shared.prayersStudy)
                ])
        ]
    }
}

struct Prayers {
    let name: String
    let completed: String
}
