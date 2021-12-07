//
//  WinterTimeModel.swift
//  AppleMusic_HW
//
//  Created by Адель Ахметшин on 07.12.2021.
//

import Foundation

struct WinterTimeModel: Hashable {
    
    struct BigItems: Hashable, Decodable {
        let title1: String
        let title2: String
        let title3: String
        let title4: String
        let image: String
    }
    
    struct MinItems: Hashable, Decodable {
        let image: String
        let title1: String
        let title2: String
    }
    static var bigItem = [
        BigItems(title1: "Избранный плейлист", title2: "Гербарий", title3: "Apple Music", title4: "Спокойная и уютная инди-музыка", image: "winter"),
        BigItems(title1: "Избранный плейлист", title2: "Hip-Hop", title3: "Apple Music на русском", title4: "Обычная музыка", image: "winter2"),
        BigItems(title1: "Избранный плейлист", title2: "FLOWJOB", title3: "SQWOZ BAB", title4: "Самая странная музыка",  image: "winter3"),
        BigItems(title1: "Избранный плейлист", title2: "30", title3: "Adele", title4: "Зимний саунд", image: "winter4")
    ]
    
    static var minItem = [
        MinItems(image: "music1", title1: "Зарубежное", title2: "Электронная медитация"),
        MinItems(image: "music2", title1: "Популярное", title2: "То, что слушают прямо сейчас"),
        MinItems(image: "image_0", title1: "Электронная музыка", title2: "Как рождался саунд будущего"),
        MinItems(image: "electricrock", title1: "Классика рока", title2: "Гении гитарного звука"),
        MinItems(image: "classic", title1: "Классика", title2: "Выдающиеся образцы жанра"),
        MinItems(image: "rapmusic", title1: "Хип-Хоп", title2: "Идеальные биты и рифмы")
    ]
}
