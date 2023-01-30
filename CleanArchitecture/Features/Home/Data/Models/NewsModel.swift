//
//  NewsModel.swift
//  CleanArchitecture
//
//  Created by Armağan Gök on 30.01.2023.
//

import Foundation

// MARK: - News
class News: Decodable {
    let id: Int
    let title, text: String
    let url: String
    let image: String
    let publishDate: String
    let author: String?
    let language: Language
    let sourceCountry: String

    enum CodingKeys: String, CodingKey {
        case id, title, text, url, image
        case publishDate = "publish_date"
        case author, language
        case sourceCountry = "source_country"
    }

    init(id: Int, title: String, text: String, url: String, image: String, publishDate: String, author: String?, language: Language, sourceCountry: String) {
        self.id = id
        self.title = title
        self.text = text
        self.url = url
        self.image = image
        self.publishDate = publishDate
        self.author = author
        self.language = language
        self.sourceCountry = sourceCountry
    }
}

enum Language: String, Codable {
    case en = "en"
}
