//
//  DiffCitiesView.swift
//  SwiftUI-Weather
//
//  Created by Donald Pearson on 9/20/24.
//

import SwiftUI

struct DiffCitiesView: View {
    
    var cityName: String
    
    var imageName: String
    var imageName2: String
    var temp: Int
    
   
    @State private var isNight = false

    var fiveDayLookArr = [day1, day2, day3, day4, day5]
    @State private var city: String = ""
    
    @ObservedObject var weatherViewModel = WeatherViewModel()

    private let weatherService = WeatherService()
    
    var body: some View {

        ZStack {

            BackgroundView(isNight: $isNight)
            
            VStack{
               
                TextField("Enter city", text: $city, onCommit: {
                    weatherViewModel.fetchWeather(city: city)
                })
                    .multilineTextAlignment(.center)
                    .font(.system(size: 35, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding(.top, 55)
                    
                
                //MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.moon.rain.fill", temp: 54)
                
                VStack(spacing: 5){
                    Image(systemName: isNight ? imageName2 : imageName)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    if let weather = weatherViewModel.weather {
                        Text("\((weather.main.temp * 9/5) + 32, specifier: "%.1f" ) °F")
                            .font(.system(size: 70, weight: .medium))
                            .foregroundColor(.white)
                    }}
                .padding(.bottom, 40)
                
                HStack(spacing: 6) {
                    ForEach((fiveDayLookArr), id: \.self) { view in
                        view
                    }
                }
                
                Spacer()
            
                Button{
                    print("Tapped1")
                    isNight.toggle()
                } label: {
                    WeatherButton(title: isNight ? "Change to DayTime" : "Change to Nitetime",
                                  textColor: Color.blue,
                                  backgroundColor: Color.white)
                   
                }
Spacer()
                        
            }
           
        }
       
    }
    }

//struct CityTextView: View {
//    
//    var cityName: String
//    
//    var body: some View {
//        
//        Text(cityName)
//            .font(.system(size: 32, weight: .medium, design: .default))
//            .foregroundColor(.white)
//            .padding(.top, 55)
//        
//        
//    }
//}



//struct MainWeatherStatusView: View {
//    
//    var imageName: String
//    var temp: Int
//    
//    var body: some View {
//        
// 
//        
//        VStack(spacing: 5){
//            Image(systemName: imageName)
//                .renderingMode(.original)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 180, height: 180)
//            Text("\(temp)")
//                .font(.system(size: 70, weight: .medium))
//                .foregroundColor(.white)
//        }
//        .padding(.bottom, 40)
//        
//    }
//    
//    
//}


#Preview {
    DiffCitiesView(cityName: "Midgar", imageName: "cloud.moon.rain.fill", imageName2: "moon.stars.fill",  temp: 55)
}

