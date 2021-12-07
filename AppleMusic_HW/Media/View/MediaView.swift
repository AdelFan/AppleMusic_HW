//
//  MediaView.swift
//  AppleMusic_HW
//
//  Created by Адель Ахметшин on 07.12.2021.
//

import SwiftUI

struct MediaView: View {
    
    private let rItems = MediaModel.items
    @State private var someBool = true
    @State private var selection = Set<String>()
    
    var body: some View {
            NavigationView {
                ZStack {
                    if someBool {
                        VStack {
                            Text("Ищете свою музыку?")
                                .bold()
                                .multilineTextAlignment(.center)
                                .font(.title)
                            Text("Здесь появится купленная Вами в\n             iTunes Store музыка")
                                .font(.system(size: 20))
                                .foregroundColor(.gray)
                        }
                    } else {
                        List(selection: $selection) {
                            ForEach(rItems, id: \.self) { item in
                                HStack {
                                    Image(systemName: item.image)
                                        .resizable()
                                        .frame(width: 20, height: 23)
                                        .foregroundColor(.red)
                                    Text(item.title)
                                }
                            }
                            .onMove(perform: { indices, newOffset in
                            })
                            
                        }.listStyle(InsetListStyle())
                    }
                }
                .environment(\.editMode, .constant(
                    someBool ? EditMode.inactive : EditMode.active))
                .navigationBarItems(trailing:
                                        Button(action: { someBool.toggle() },
                                               label: {
                    if someBool {
                        Text("Править")
                            .foregroundColor(.red)
                    } else {
                        Text("Готово")
                            .bold()
                            .foregroundColor(.red)
                    }
                })
                )
                .navigationTitle("Медиатека")
                .accentColor(.red)
            }
    }
}

struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView()
    }
}
