//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Donald Pearson on 8/30/24.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        
        

        
        TabView {
            DiffCitiesView(cityName: "Midgar", imageName: "cloud", imageName2: "moon.stars.fill", temp: 54)
                .foregroundStyle(.white)
                .tabItem {
                    Label("Midgar", systemImage: "millsign")
                        
                }
            
            DiffCitiesView(cityName: "Balamb", imageName: "cloud.sun.fill", imageName2: "cloud.moon", temp: 76)
                .foregroundStyle(.white)
                .tabItem {
                    //Label("Contacted", systemImage: "checkmark.circle")
                    Label("Balamb", systemImage: "house.circle")
                        
                }
            }
        
        
    }
}

#Preview {
    ContentView()
}

//var day1 = WeatherDayView(dayOfWeek: "MON", imageName: "cloud.bolt.fill", temp: 55)
//var day2 = WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.fog.fill", temp: 74)
//var day3 = WeatherDayView(dayOfWeek: "WED", imageName: "cloud.snow.fill", temp: 65)
//var day4 = WeatherDayView(dayOfWeek: "THU", imageName: "cloud.rainbow.half", temp: 40)
// var day5 = WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.bolt.fill", temp: 70)
