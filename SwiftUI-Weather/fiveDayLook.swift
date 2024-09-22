//
//  fiveDayLook.swift
//  SwiftUI-Weather
//
//  Created by Donald Pearson on 9/18/24.
//

import Foundation
import SwiftUI

struct WeatherDayView: View, Hashable {
    var dayOfWeek: String
    var imageName: String
    var temp: Int

    
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text("\(temp)")
                .font(.system(size: 30, weight: .bold, design: .default))
                .foregroundColor(.white)
            
        }
    }
}
            var day1 =        WeatherDayView(dayOfWeek: "MON",
                                   imageName: "cloud.bolt.fill",
                                   temp: 55)
            var day2 =        WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.fog.fill",
                                   temp: 74)
            var day3 =        WeatherDayView(dayOfWeek: "WED",
                                   imageName: "cloud.snow.fill",
                                   temp: 65)
            var day4 =        WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.rainbow.half",
                                   temp: 40)
            var day5 =        WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.sun.bolt.fill",
                                   temp: 70)
