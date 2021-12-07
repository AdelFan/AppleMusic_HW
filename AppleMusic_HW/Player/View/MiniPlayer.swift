//
//  MiniPlayer.swift
//  AppleMusic_HW
//
//  Created by Адель Ахметшин on 07.12.2021.
//

import SwiftUI

struct MiniPlayer: View {
    
    var animation: Namespace.ID
    @Binding var expand: Bool
    @State var volume: CGFloat = 0
    var height = UIScreen.main.bounds.height / 3
    
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    
    
    var body: some View {
        VStack(spacing: 0) {
            Capsule()
                .fill(Color.gray)
                .frame(width: expand ? 60 : 0, height: expand ? 4 : 0)
                .opacity(expand ? 1 : 0)
                .padding(.top, expand ? safeArea?.top : 0)
                .padding(.vertical, expand ? 30 : 0)
            
            HStack(spacing: 15) {
                
                if expand {
                    Spacer(minLength: 0)
                }
                
                Image("image_0")
                    .resizable()
                    .shadow(color: .gray, radius: 15, x: 0.0, y: 5.0)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: expand ? height : 55, height: expand ? height : 55)
                    .cornerRadius(15)
                
                
                if !expand {
                    Text("2Pac - Lord Knows")
                        .font(.title3)
                        .foregroundColor(.black)
                        .matchedGeometryEffect(id: "Label", in: animation)
                }
                
                Spacer(minLength: 0)
                
                if !expand {
                    Button(action: {}, label: {
                        Image(systemName: "play.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "forward.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                }
            }
            .padding(.horizontal)
            
            VStack {
                HStack {
                    if expand {
                        VStack() {
                            Text("Lord Knows")
                                .bold()
                                .font(.system(size: 22))
                                .foregroundColor(.black)
                                .matchedGeometryEffect(id: "Label", in: animation)
                                .padding(.leading, 0)
                            
                            
                            Text("2Pac")
                                .font(.system(size: 19))
                                .foregroundColor(.black)
                                .padding(.trailing, 70)
                        }
                        .frame(width: 150)
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}) {
                        Image(systemName: "ellipsis.circle")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                }
                .padding()
                .padding(.top)
                
                HStack {
                    ZStack {
                        Circle()
                            .frame(width: 7, height: 10)
                            .padding(.trailing, 330)
                        
                        Capsule()
                            .frame(width: 330, height: 2)
                    }
                }
                HStack {
                    Text("0:00")
                        .font(.system(size: 12))
                        .foregroundColor(.primary)
                        .padding(.trailing, 130)
                    Text("-4:12")
                        .font(.system(size: 12))
                        .foregroundColor(.primary)
                        .padding(.leading, 130)
                }
                HStack {
                    Button(action: {}) {
                        Image(systemName: "backward.fill")
                            .resizable()
                            .frame(width: 45, height: 25)
                            .foregroundColor(.primary)
                    }
                    .padding()
                    .padding()
                    Button(action: {}) {
                        Image(systemName: "play.fill")
                            .resizable()
                            .frame(width: 35, height: 40)
                            .foregroundColor(.primary)
                    }
                    .padding()
                    .padding()
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .resizable()
                            .frame(width: 45, height: 25)
                            .foregroundColor(.primary)
                    }
                    .padding()
                    .padding()
                }
                
                Spacer(minLength: 0)
                
                HStack(spacing: 15) {
                    Image(systemName: "speaker.fill")
                    Slider(value: $volume).accentColor(.red)
                    Image(systemName: "speaker.wave.2.fill")
                }
                .padding()
                .padding()
                HStack(spacing: 10) {
                    Button(action: {}) {
                        Image(systemName: "quote.bubble")
                            .resizable()
                            .frame(width: 23, height: 23)
                            .foregroundColor(.primary)
                    }
                    .padding()
                    .padding()
                    
                    Button(action: {}) {
                        Image(systemName: "airplayaudio")
                            .resizable()
                            .frame(width: 23, height: 23)
                            .foregroundColor(.primary)
                    }
                    .padding()
                    .padding()
                    
                    Button(action: {}) {
                        Image(systemName: "list.bullet")
                            .resizable()
                            .frame(width: 23, height: 18)
                            .foregroundColor(.primary)
                    }
                    .padding()
                    .padding()
                    
                }.padding()
            }
            .frame(width: expand ? nil : 0, height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)
            
        }
        .frame(maxHeight: expand ? .infinity : 80)
        .background(
            VStack(spacing: 0) {
                PlayerView()
            }
                .onTapGesture(perform:  {
                    withAnimation(.spring()) {expand.toggle()}
                })
        )
        .ignoresSafeArea()
        .offset(y: expand ? 0 : -48)
    }
}
