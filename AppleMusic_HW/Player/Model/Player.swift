//
//  Player.swift
//  AppleMusic_HW
//
//  Created by Адель Ахметшин on 07.12.2021.
//

import SwiftUI

struct Player: View {
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
            
            Image("image_0")
                .resizable()
                .cornerRadius(17)
                .frame(width: 60, height: 60)
                .padding(.trailing, 280)
                .shadow(color: .gray, radius: 10, x: 0.0, y: 5.0)
            
            Text("2Pac - Lord Knows")
                .font(.system(size: 18))
                .padding(.trailing, 30)
            
            Button(action: {}, label: {
                Image(systemName: "play.fill")
                    .font(.title2)
                    .foregroundColor(.black)
                    .padding(.leading, 240)
            })
            
            Button(action: {}, label: {
                Image(systemName: "forward.fill")
                    .font(.title2)
                    .foregroundColor(.gray)
                    .padding(.leading, 320)
            })
        }
        .padding(.top, 590)
        Divider().padding(.top, 665)
    }
}

