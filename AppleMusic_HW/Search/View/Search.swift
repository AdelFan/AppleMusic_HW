//
//  Search.swift
//  AppleMusic_HW
//
//  Created by Адель Ахметшин on 07.12.2021.
//

import SwiftUI

private let firstItems = SearchModel.firstColumn
private let secondItems = SearchModel.secondColumn

struct SearchView: View {
    @State var search = ""
        
    let columns = [
        GridItem(.flexible())
    ]
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.primary)
                    TextField("Поиск", text: $search)
                }
                .padding(.vertical, 10)
                .padding(.horizontal)
                .background(Color.primary.opacity(0.06))
                .cornerRadius(20)
                
                LazyVGrid(columns: columns) {
                    Text("Поиск по категориям")
                        .bold()
                        .font(.title2)
                        .padding(.trailing, 125)
                    HStack {
                            VStack {
                                ForEach(firstItems, id: \.self) { item in
                                    NavigationLink(destination: FirstScreen()) {
                                    ZStack {
                                        Image(item.image)
                                            .resizable()
                                            .frame(width: 180, height: 140)
                                            .cornerRadius(20)
                                        Text(item.title)
                                            .bold()
                                            .frame(width: 170, height: 100, alignment: .bottomLeading)
                                            .font(.system(size: 16))
                                            .foregroundColor(.white)
                                    }
                                }
                                }
                            }
                            VStack {
                                ForEach(secondItems, id: \.self) { item in
                                    NavigationLink(destination: FirstScreen()) {
                                    ZStack {
                                        Image(item.image)
                                            .resizable()
                                            .frame(width: 180, height: 140)
                                            .cornerRadius(20)
                                        Text(item.title)
                                            .bold()
                                            .frame(width: 170, height: 100, alignment: .bottomLeading)
                                            .font(.system(size: 16))
                                            .foregroundColor(.white)
                                    }
                                }
                                }
                            }
                    }
                }
            }.navigationTitle("Поиск")
            
        } .navigationBarHidden(true)
        
    }
}

struct FirstScreen: View {
    var body: some View {
        WinterTimeView()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }

}
