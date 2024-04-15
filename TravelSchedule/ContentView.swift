//
//  ContentView.swift
//  TravelSchedule
//
//  Created by Margarita Pitinova on 13.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isFeatureEnabled = false
    
    
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
                        VStack {
                            HStack {
                                Toggle("Темная тема", isOn: $isFeatureEnabled)
                                    .padding()
                            }
                            
                            HStack {
                                Button(action: forvard) {
                                    Text("Пользовательское соглашение")
                                    Image("Chevron")
                                }
                            }
                            
                            Text("Приложение использует API «Яндекс.Расписания»")
                                .font(.system(size: 12))
                            Text("Версия 1.0 (beta)")
                                .font(.system(size: 12))
                        }
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
    
    
    private func forvard() {
        //TODO: forvard
    }
}

#Preview {
    ContentView()
}
