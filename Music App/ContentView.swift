//
//  ContentView.swift
//  Music App
//
//  Created by mstudent on 29/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack (alignment: Alignment(horizontal: .center, vertical: .bottom)){
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack (alignment: .leading){
                        HStack (spacing: 0){
                            LinearGradient(gradient: Gradient(colors: [.white, .white, Color("gradient")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                .mask(
                                    Text("Liked Songs")
                                        .font(.system(size: 44))
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .lineLimit(2)
                                )
                            
                            Spacer()
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(LinearGradient(gradient: Gradient(colors: [Color("gradient"), Color("gradient2")]), startPoint: .bottom, endPoint: .top))
                                    .frame(width: 200, height: 200, alignment: .center)
                                    .shadow(color: Color("primaryShadow").opacity(0.5), radius: 15, x: -20, y: 20)
                                    .overlay(
                                        VStack (alignment: .trailing){
                                            Spacer()
                                            
                                            HStack(alignment: .bottom) {
                                                Spacer()
                                                
                                                Image(systemName: "play.circle.fill")
                                                    .font(.system(size: 40))
                                                    .foregroundColor(.white)
                                            }
                                        }.frame(width: 200, height: 200, alignment: .center)
                                    )
                                
                                Image("recorder-player")
                                    .resizable()
                                    .frame(width: 170, height: 170, alignment: .top)
                                    .offset(y: -60)
                                    .rotation3DEffect(.degrees(10), axis: (x: 10.0, y: -20, z: 20))
                                    .shadow(color: Color("primaryShadow").opacity(0.2), radius: 5, x: 0, y: 10)
                            }
                            .frame(width: 200, height: 200, alignment: .center)
                        }
                        .padding(.top, 50)
                        
                        ForEach(songs) { item in
                            HStack (spacing: 20) {
                                Image("pic")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 100, height: 100, alignment: .center)
                                    .cornerRadius(15)
                                
                                VStack (alignment: .leading, spacing: 10) {
                                    Text("\(item.name)")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                    
                                    HStack {
                                        Text("\(item.artist)")
                                            .foregroundColor(.white)
                                        
                                        Spacer()
                                        
                                        Text(item.time)
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                        }
                    }
                    .frame(width: (UIScreen.main.bounds.width - 50))
                    .padding(.bottom, 120)
                }
            }
            PlayerControls()
        }
        .background(Color("Primary"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
