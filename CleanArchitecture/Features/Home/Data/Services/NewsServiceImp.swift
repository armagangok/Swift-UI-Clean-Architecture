//
//  NewsService.swift
//  CleanArchitecture
//
//  Created by Armağan Gök on 29.01.2023.
//

import Foundation


class NewsServiceImp: NewsService{
    func fetchNews(keyword: String) -> NewsResponse? {
        guard let url = URL(string: BASE_URL) else {return nil}
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            do{
                if let data = data {
                    _ = try JSONDecoder().decode([NewsResponse].self, from: data)
                    DispatchQueue.main.async {
                        let data = self.fetchNews(keyword: keyword)
                        print(data!.news)
                    }
                } else {
                    print("No data")
                }
            } catch (let error) {
                print(error.localizedDescription)
             }
        }.resume()
        return nil
    }

}

/*    func fetchData() {
        let api = "https://jsonplaceholder.typicode.com/todos"
        guard let url = URL(string: api) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
          do {
             if let data = data {
               let result = try JSONDecoder().decode([Model].self, from: data)
               DispatchQueue.main.async {
                  self.items = result
               }
             } else {
               print("No data")
             }
          } catch (let error) {
             print(error.localizedDescription)
          }
         }.resume()
      }
 */
