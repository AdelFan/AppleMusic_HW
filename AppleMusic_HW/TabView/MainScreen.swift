//
//  MainScreen.swift
//  AppleMusic_HW
//
//  Created by Адель Ахметшин on 07.12.2021.
//

import SwiftUI

struct MainScreen: View {
    
    @State var expand = false
    @Namespace var animation
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom),
               content: {
            TabView {
                ZStack {
                    VStack {
                        MediaView()
                    }
                }
                .tabItem {
                    Image(systemName: "music.note.house.fill")
                    Text("Медиатека")
                }
                
                VStack {
                   Radio()
                }
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }
                VStack {
                    SearchView()
                }
                .tabItem {
                    
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
            }
            .accentColor(.red)
            MiniPlayer(animation: animation, expand: $expand)
               })
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }

}
