//
//  ContentView.swift
//  TravelSchedule
//
//  Created by Margarita Pitinova on 13.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isToggleOn = false
    
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
                                Toggle(isOn: $isToggleOn) {
                                    Text("Темная тема")
                                }
                                .tint(.blueUni)
                                .padding()
                            }
                            HStack {
                                Button(action: forvard) {
                                    Text("Пользовательское соглашение")
                                    Spacer()
                                    Image("Chevron")
                                }
                                .padding()
                            }
                            Spacer()
                        }
                    }
                    Text("Приложение использует API «Яндекс.Расписания»")
                        .font(.system(size: 12))
                    Text("Версия 1.0 (beta)")
                        .font(.system(size: 12))
                        .padding()
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
