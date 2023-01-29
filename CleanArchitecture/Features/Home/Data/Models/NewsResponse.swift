//
//  NewsModel.swift
//  CleanArchitecture
//
//  Created by Armağan Gök on 29.01.2023.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let newsResponse = try? JSONDecoder().decode(NewsResponse.self, from: jsonData)

import Foundation

// MARK: - NewsResponse
struct NewsResponse: Codable {
    let offset, number, available: Int
    let news: [News]
}
