//
//  RadioModel.swift
//  AppleMusic_HW
//
//  Created by Адель Ахметшин on 07.12.2021.
//

import Foundation

struct RadioModel: Hashable {
    static var bigItem = [
        BigItems(title1: "Новый выпуск", title2: "Музыкальный базар с Бастой", title3: "Новое шоу", image: "basta1"),
        BigItems(title1: "Избранный плейлист", title2: "Hip-Hop", title3: "Apple Music на русском", image: "hip-hop"),
        BigItems(title1: "Новый альбом", title2: "FLOWJOB", title3: "SQWOZ BAB", image: "flowjob"),
        BigItems(title1: "Новый альбом", title2: "30", title3: "Adele", image: "adele")
    ]
    
    static var minItem = [
        MinItems(image: "relax", title1: "Музыка для расслабления", title2: "Электронная медитация"),
        MinItems(image: "popular", title1: "Популярное", title2: "То, что слушают прямо сейчас"),
        MinItems(image: "music", title1: "Классика электронной музыки", title2: "Как рождался саунд будущего"),
        MinItems(image: "electricrock", title1: "Классика рока", title2: "Гении гитарного звука"),
        MinItems(image: "classic", title1: "Классика", title2: "Выдающиеся образцы жанра"),
        MinItems(image: "rapmusic", title1: "Хип-Хоп", title2: "Идеальные биты и рифмы")
    ]
    
    struct BigItems: Hashable, Decodable {
        let title1: String
        let title2: String
        let title3: String
        let image: String
    }
    
    struct MinItems: Hashable, Decodable {
        let image: String
        let title1: String
        let title2: String
    }
}
