//
//  ContentView.swift
//  TravelSchedule
//
//  Created by Margarita Pitinova on 13.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                VStack{
                    ZStack {
                        Color.white.edgesIgnoringSafeArea(.top)
                        Text("Расписание")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    Divider()
                }
                .tabItem {
                    Image("TabSchedule").renderingMode(.template)
                }
                VStack {
                    ZStack {
                        Color.white.edgesIgnoringSafeArea(.top)
                        Text("Настройки")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                    Divider()
                }
                .tabItem {
                    Image("TabSettings").renderingMode(.template)
                }
            }
            .frame(maxHeight: .infinity)
        }
    }
}

#Preview {
    ContentView()
}
