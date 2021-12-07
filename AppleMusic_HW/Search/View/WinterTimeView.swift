//
//  WinterTimeView.swift
//  AppleMusic_HW
//
//  Created by Адель Ахметшин on 07.12.2021.
//

import SwiftUI

private let bItem = WinterTimeModel.bigItem
private let mItem = WinterTimeModel.minItem

struct WinterTimeView: View {
    
    let columns = [
        GridItem(.flexible())
    ]
    
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: columns, alignment: .top) {
                        ForEach(bItem, id: \.self) { item in
                            VStack(alignment: .leading) {
                                Divider()
                                    .padding(.leading)
                                Text(item.title1)
                                    .foregroundColor(.gray)
                                    .font(.system(size: 18))
                                    .padding(.leading, 12)
                                    .padding(.trailing, 0)
                                Text(item.title2)
                                    .foregroundColor(.black)
                                    .font(.system(size: 22))
                                    .padding(.leading, 12)
                                    .padding(.trailing, 0)
                                Text(item.title3)
                                    .foregroundColor(.gray)
                                    .font(.system(size: 18))
                                    .padding(.leading, 12)
                                    .padding(.trailing, 0)
                                ZStack {
                                    Image(item.image)
                                        .resizable()
                                        .frame(width: 350, height: 250, alignment: .center)
                                        .cornerRadius(15)
                                        .padding(.leading, 12)
                                        .padding(.trailing, 0)
                                        .shadow(radius: 5)
                                        .padding(.bottom, 8)
                                    Text(item.title4)
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.title3)
                                        .frame(width: 300, height: 200, alignment: .bottomLeading)
                                }
                                Divider()
                                    .padding(.leading)
                            }
                            
                        }
                    }.padding(.trailing)
                }
                .navigationBarTitle("Зимнее время")
                
                HStack {
                    Text("Настроение - Осень")
                        .bold()
                        .font(.system(size: 21))
                        .padding(.trailing, 100)
                    Button("См. все") {
                    }
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: columns) {
                        ForEach(mItem, id: \.self) { item in
                            VStack {
                                Image(item.image)
                                    .resizable()
                                    .frame(width: 170, height: 170)
                                    .cornerRadius(7)
                                Text(item.title1)
                                    .font(.system(size: 15))
                            }
                        }
                    }
                    .padding(.leading, 10)
                }
            }
            .navigationBarItems(leading: NavigationLink(destination: {
                SearchView()
            }, label: {
                Image(systemName: "chevron.backward")
            }), trailing:
                                    Button(action: {}, label: {
                Image(systemName: "ellipsis.circle.fill").resizable().foregroundColor(.red).frame(width: 25, height: 25)
            })
            )
        }
        .navigationBarHidden(true)
        .accentColor(.red)
        
    }
}

struct WinterTimeView_Previews: PreviewProvider {
    static var previews: some View {
        WinterTimeView()
    }
}
