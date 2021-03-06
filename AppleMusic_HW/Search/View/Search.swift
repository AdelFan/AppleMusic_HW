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
    @State private var search = ""
    @State private var isEditing = false
    
    let columns = [
        GridItem(.flexible())
    ]
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                HStack(spacing: 10) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.primary)
                    TextField("Поиск", text: $search) { edit in
                        self.isEditing = edit
                    }
                    .onTapGesture {
                        self.isEditing = true
                    }
                    
                    if isEditing {
                        Button(action: {
                            self.isEditing = false
                            self.search = ""
                        }) {
                            Text("Отмена")
                        }
                        .padding(.trailing, 5)
                        .animation(.default)
                        .transition(.move(edge: .trailing))
                    }
                }
                .padding(.vertical, 10)
                .padding(.horizontal)
                .background(Color.primary.opacity(0.06))
                .cornerRadius(12)
                .padding(.leading, 15)
                .padding(.trailing, 15)
                
                
                
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
                                            .cornerRadius(10)
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
                                            .cornerRadius(10)
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

struct MySearchCustomStyle: TextFieldStyle {
    
    @Binding var editing: Bool
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
        //            .font(.title2)
        
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
