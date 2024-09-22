//
//  BackgroundColor.swift
//  SwiftUI-Weather
//
//  Created by Donald Pearson on 9/20/24.
//

import SwiftUI
import Foundation

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
