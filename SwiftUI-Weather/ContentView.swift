//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by İsmail Can Akgün on 27.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Geçişli arka Plan rengi
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Pendik, IST ")
                    .font(.system(size: 32, weight: .medium))
                    .foregroundStyle(.white)
                    .padding() // Etrafını sıkı sarmıyor dolgu yapıyor ve genişlik kazandırıyor.
                
                VStack(spacing: 6 /*  Image ile Text'in arasındaki boşluğu azalttık */ ) {
                    
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original) // image'i renkli hale getirdik.
                    // Image'in boyutunu ayarladık
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("15°")
                    // Text'in boyutunu ve büyüklüğünü ayarladık.
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                
                
                
                
                    HStack(spacing: 35) {
                        VStack {
                            Text("PZT")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.white)
                            
                            Image(systemName: "cloud.sun.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            
                            Text("25°")
                                .font(.system(size: 28, weight: .medium))
                                .foregroundColor(.white)
                        }
                        
                        VStack {
                            Text("SL")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.white)
                            
                            Image(systemName: "sun.max.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            
                            Text("15°")
                                .font(.system(size: 28, weight: .medium))
                                .foregroundColor(.white)
                        }
                        
                        VStack {
                            Text("ÇRŞ")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.white)
                            
                            Image(systemName: "wind")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            
                            Text("13°")
                                .font(.system(size: 28, weight: .medium))
                                .foregroundColor(.white)
                        }
                        
                        VStack {
                            Text("PRŞ")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.white)
                            
                            Image(systemName: "sunset.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            
                            Text("17°")
                                .font(.system(size: 28, weight: .medium))
                                .foregroundColor(.white)
                        }
                        
                        VStack {
                            Text("CM")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.white)
                            
                            Image(systemName: "moon.stars.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            
                            Text("8°")
                                .font(.system(size: 28))
                                .foregroundColor(.white)
                        }
                    }
                    
                Spacer()
                    
                    
                    
                }
            }
        }
    }



#Preview {
    ContentView()
}
