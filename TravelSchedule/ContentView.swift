//
//  ContentView.swift
//  TravelSchedule
//
//  Created by Margarita Pitinova on 13.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.top)
                Text("Расписание")
                    .font(.largeTitle)
                    .foregroundColor(.black)
            }
            .tabItem {
                Image("TabSchedule").renderingMode(.template)
            }
            ZStack {
                Color.white.edgesIgnoringSafeArea(.top)
                Text("Настройки")
                    .font(.largeTitle)
                    .foregroundColor(.black)
            }
            .tabItem {
                Image("TabSettings").renderingMode(.template)
            }
        }
    }
}

#Preview {
    ContentView()
}
