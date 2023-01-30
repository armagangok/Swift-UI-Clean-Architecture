//
//  HomeView.swift
//  CleanArchitecture
//
//  Created by Armağan Gök on 29.01.2023.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var newsController = NewsController()

    var body: some View {
        Text("Hello, World!")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
