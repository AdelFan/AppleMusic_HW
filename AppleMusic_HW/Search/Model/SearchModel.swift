//
//  SearchModel.swift
//  AppleMusic_HW
//
//  Created by Адель Ахметшин on 07.12.2021.
//

import Foundation

struct SearchModel: Hashable {
     static var firstColumn = [
        bigItems(image: "winterTime", title: "Зимнее время", link: "FirstScreen()"),
        bigItems(image: "pop", title: "Поп", link: "FirstScreen()"),
        bigItems(image: "prostr", title: "Пространственное звучание", link: "FirstScreen()"),
        bigItems(image: "hiphopEng", title: "Хип-хоп", link: "FirstScreen()"),
    ]
    
     static var secondColumn = [
        bigItems(image: "popOnRussia", title: "Поп на русском", link: "FirstScreen()"),
        bigItems(image: "alternative", title: "Альтернатива", link: "FirstScreen()"),
        bigItems(image: "hiphopOnRussia", title: "Хип-хоп на русском", link: "FirstScreen()"),
        bigItems(image: "relaxMusic", title: "Расслабление", link: "FirstScreen()")
    ]
    
    
    struct bigItems: Hashable {
        let image: String
        let title: String
        let link: String
    }
}
