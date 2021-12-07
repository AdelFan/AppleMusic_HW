//
//  MediaModel.swift
//  AppleMusic_HW
//
//  Created by Адель Ахметшин on 07.12.2021.
//

import Foundation

struct MediaModel: Hashable {
static var items = [
    strItem(id: 0, title: "Плейлисты", image: "music.note.list"),
    strItem(id: 1, title: "Артисты", image: "music.mic"),
    strItem(id: 2, title: "Альбомы", image: "square.stack"),
    strItem(id: 3, title: "Песни", image: "music.note"),
    strItem(id: 4, title: "Телешоу и фильмы", image: "tv"),
    strItem(id: 5, title: "Видеоклипы", image: "music.note.tv"),
    strItem(id: 6, title: "Жанры", image: "guitars"),
    strItem(id: 7, title: "Сборники", image: "person.2.crop.square.stack"),
    strItem(id: 8, title: "Авторы", image: "music.quarternote.3"),
    strItem(id: 9, title: "Загружено", image: "arrow.down.circle"),
    strItem(id: 10, title: "Домашняя коллекция", image: "music.note.house")
]

struct strItem: Hashable, Identifiable {
    let id: Int
    let title: String
    let image: String
}
}
