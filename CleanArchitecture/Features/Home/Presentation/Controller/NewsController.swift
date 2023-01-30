//
//  NewsController.swift
//  CleanArchitecture
//
//  Created by Armağan Gök on 29.01.2023.
//

import Foundation


class NewsController: ObservableObject {
    var newsResponse: NewsResponse?
    
    func fetchNews( keyword: String) {
        newsResponse = NewsServiceImp().fetchNews(keyword: keyword)
    }
}
