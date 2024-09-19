//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Donald Pearson on 8/30/24.
//

import SwiftUI

struct ContentView: View {
    
        @State private var isNight = false
    
    var fiveDayLookArr = [day1, day2, day3, day4, day5]
    
    var body: some View {
        
        
        //        VStack {
        //            Image(systemName: "globe")
        //                .imageScale(.large)
        //                .foregroundStyle(.tint)
        //            Text("Hello, world!")
        //        }
        //        .padding()
        //
        //
        
        
        ZStack {
//            BackgroundView(topColor: isNight ? .black : .red,
//                           bottomColor: isNight ? .white : Color("darkYellow"))
            BackgroundView(isNight: $isNight)
            
              
            VStack{
//                Text("I am a fucking failure")
//                    .font(.system(size: 32, weight: .medium, design: .default))
//                    .foregroundColor(.white)
//                    .padding(.top, 55)
                
                CityTextView(cityName: "Midgar")
                
//                VStack(spacing: 5){
//                    Image(systemName: "cloud.moon.rain.fill")
//                        .renderingMode(.original)
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 180, height: 180)
//                    Text("45°")
//                        .font(.system(size: 70, weight: .medium))
//                        .foregroundColor(.green)
//                }
//                .padding(.bottom, 40)
                //Spacer()
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.moon.rain.fill", temp: 54)
                
//                HStack(spacing: 6) {
//                    WeatherDayView(dayOfWeek: "Useless",
//                                   imageName: "cloud.bolt.fill",
//                                   temp: 55)
//                    WeatherDayView(dayOfWeek: "Idiot",
//                                   imageName: "cloud.fog.fill",
//                                   temp: 74)
//                    WeatherDayView(dayOfWeek: "Failure",
//                                   imageName: "cloud.snow.fill",
//                                   temp: 65)
//                    WeatherDayView(dayOfWeek: "Nothing",
//                                   imageName: "cloud.rainbow.half",
//                                   temp: 40)
//                    WeatherDayView(dayOfWeek: "Regrets",
//                                   imageName: "cloud.sun.bolt.fill",
//                                   temp: 70)
//
//                }
                
                HStack(spacing: 6) {
                    
                    ForEach((fiveDayLookArr), id: \.self) { view in
                        view
                    }
                    
                }
                
                Spacer()
                Button{
                    //action
                   // BackgroundView(topColor: .red, bottomColor: .white)
                    print("Tapped1")
                    isNight.toggle()
                } label: {
                    WeatherButton(title: isNight ? "Change to DayTime" : "Change to Nitetime",
                                  textColor: Color.blue,
                                  backgroundColor: Color.white)
//                Text("Change Daytime")
//                        .frame(width: 200, height: 50)
//                        .background(Color.white)
//                        .foregroundColor(Color.blue)
//                        .font(.system(size: 20, weight: .bold, design: .default))
//                        .cornerRadius(15)
                    
                }
Spacer()
                    	
            }
            
        }
        
    }
    
}

#Preview {
    ContentView()
}

//struct WeatherDayView: View {
//    var dayOfWeek: String
//    var imageName: String
//    var temp: Int
//    
//    var body: some View {
//        VStack{
//            Text(dayOfWeek)
//                .font(.system(size: 20, weight: .bold, design: .default))
//                .foregroundColor(.white)
//            Image(systemName: imageName)
//                .renderingMode(.original)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 50, height: 50)
//            Text("\(temp)")
//                .font(.system(size: 30, weight: .bold, design: .default))
//                .foregroundColor(.white)
//            
//        }
//    }
//}

struct BackgroundView: View {
    
//    var topColor: Color
//    var bottomColor: Color
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? Color("darkPurple") : Color("darkBlue"),
                                                   isNight ? .white : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding(.top, 55)
        
        
    }
}


struct MainWeatherStatusView: View {
    
    var imageName: String
    var temp: Int
    
    var body: some View {
        
 
        
        VStack(spacing: 5){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temp)")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
        
    }
    
    
}




//
//LinearGradient(gradient: Gradient(colors: [.red, Color("darkYellow")]),
//               startPoint: .topLeading,
//               endPoint: .bottomTrailing)
//.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
