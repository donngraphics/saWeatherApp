//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Donald Pearson on 9/5/24.
//

import Foundation
import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        
        
        Text(title)
                .frame(width: 200, height: 50)
                .background(backgroundColor)
                .foregroundColor(textColor)
                .font(.system(size: 20, weight: .bold, design: .default))
                .cornerRadius(15)
        
    }
    
}
