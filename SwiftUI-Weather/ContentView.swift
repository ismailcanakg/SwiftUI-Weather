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
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
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
                
                
                
                
                HStack(spacing: 20) {
                                       // 1
                                       WeatherDayView(dayOfWeek: "PZT",
                                                      imageName: "cloud.sun.fill",
                                                      temperature: 16)
                                       // 2
                                         WeatherDayView(dayOfWeek: "SL",
                                                        imageName: "sun.max.fill",
                                                        temperature: 25)
                                       // 3
                                        WeatherDayView(dayOfWeek: "ÇRŞ",
                                                       imageName: "wind.snow",
                                                       temperature: 9)
                                       // 4
                                           WeatherDayView(dayOfWeek: "PRŞ",
                                                          imageName: "sunset.fill",
                                                          temperature: 17)
                                       // 5
                                          WeatherDayView(dayOfWeek: "CM",
                                                         imageName: "snow",
                                                         temperature: 4)
                                   }

                    
                Spacer()
                    
                    
                    
                }
            }
        }
    }



#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
