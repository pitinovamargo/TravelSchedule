//
//  ContentView.swift
//  TravelSchedule
//
//  Created by Margarita Pitinova on 13.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isToggleOn = false
    @State private var fromText = ""
    @State private var toText = ""
    
    var body: some View {
        // первая вкладка таббара
        VStack {
            TabView {
                VStack(spacing: 44) {
                    HStack(spacing: 32) {
                        Spacer()
                        HStack(spacing: 12) {
                            ForEach(0..<4, id: \.self) { _ in
                                ZStack(alignment: .bottom) {
                                    Image("Stories1")
                                        .resizable()
                                        .frame(width: 92, height: 140)
                                        .clipShape(RoundedRectangle(cornerRadius: 16.0))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 16.0)
                                                .stroke(Color.blueUni, lineWidth: 4.0)
                                        )
                                    Text("Text Text Text Text Text Text Text Text Text")
                                        .font(.system(size: 12))
                                        .foregroundColor(.white)
                                        .lineLimit(3)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: 76)
                                        .padding(.bottom, 12)
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                    
                    VStack {
                        ZStack {
                            HStack {
                                VStack(spacing: 0) {
                                    TextField("Откуда", text: $fromText)
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 8)
                                        .background(Color.whiteUni)
                                        .clipShape(
                                            UnevenRoundedRectangle(
                                                topLeadingRadius: 20,
                                                bottomLeadingRadius: 0,
                                                bottomTrailingRadius: 0,
                                                topTrailingRadius: 20
                                            )
                                        )
                                    TextField("Куда", text: $toText)
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 8)
                                        .background(Color.whiteUni)
                                        .clipShape(
                                            UnevenRoundedRectangle(
                                                topLeadingRadius: 0,
                                                bottomLeadingRadius: 20,
                                                bottomTrailingRadius: 20,
                                                topTrailingRadius: 0
                                            )
                                        )
                                }
                                Button(action: changeDirection) {
                                    Image("СhangeButton")
                                }
                                .padding()
                            }
                            .padding(16)
                            .background(Color.blueUni)
                            .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal, 16)
                    
                    
                    
                    Spacer()
                    Divider()
                }
                .tabItem {
                    Image("TabSchedule").renderingMode(.template)
                }
                // вторая вкладка таббара
                VStack {
                    ZStack {
                        Color.whiteDayNight.edgesIgnoringSafeArea(.top)
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
    private func changeDirection() {
        //TODO: changeDirection
    }
}

#Preview {
    ContentView()
}
