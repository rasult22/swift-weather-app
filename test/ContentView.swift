//
//  ContentView.swift
//  test
//
//  Created by Rassulzhan Turganov on 08.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Almaty, Kazakhstan")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .padding()
                    .foregroundColor(.white)
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("29°")
                        .font(.system(size: 70, weight: .medium, design: .default))
                        .foregroundColor(.white) 
                }
                .padding(.bottom, 40)
                HStack(spacing: 20) {
                    WeatherDayView(dayOfTheWeek: "Mon", imageName: "cloud.sun.fill", temperature: 29)
                    WeatherDayView(dayOfTheWeek: "Tue", imageName: "cloud.bolt.rain.fill", temperature: 14)
                    WeatherDayView(dayOfTheWeek: "Wed", imageName: "cloud.rain.fill", temperature: 16)
                    WeatherDayView(dayOfTheWeek: "Thu", imageName: "cloud.fill", temperature: 24)
                    WeatherDayView(dayOfTheWeek: "Fri", imageName: "cloud.drizzle.fill", temperature: 15)
                    WeatherDayView(dayOfTheWeek: "Sat", imageName: "cloud.sun.fill", temperature: 28)
                }
                Spacer()
            }
        }
         
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfTheWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfTheWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40, alignment:  .center)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundColor(.white )
        }
    }
}
