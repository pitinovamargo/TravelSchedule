//
//  ContentView.swift
//  TravelSchedule
//
//  Created by Margarita Pitinova on 13.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isToggleOn = false
    @Binding var isDarkModeOn: Bool // Привязка к переменной из другого файла
    
    @State private var fromText = ""
    @State private var toText = ""
    
    var body: some View {
        // первая вкладка таббара
        VStack {
            TabView {
                VStack(spacing: 44) {
                    HStack(spacing: 32) {
                        Spacer()
                        HStack(spacing: 16) {
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
                    .padding(.leading, 16)
                    
                    VStack {
                        ZStack {
                            HStack {
                                VStack(spacing: 0) {
                                    TextField("Откуда", text: $fromText)
                                        .padding(.horizontal, 16)
                                        .frame(height: 48)
                                        .background(Color.whiteUni)
                                        .foregroundColor(Color.grayUni)
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
                                        .frame(height: 48)
                                        .background(Color.whiteUni)
                                        .foregroundColor(Color.grayUni)
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
                                .padding(.leading, 7)
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
                .background(Color.whiteDayNight)
                .tabItem {
                    Image("TabSchedule")
                        .renderingMode(.template)
                        .foregroundColor(.accentColor)
                }
                // вторая вкладка таббара
                VStack {
                    ZStack {
                        VStack {
                            HStack {
                                Toggle(isOn: $isToggleOn) {
                                    Text("Темная тема")
                                }
                                .tint(.blueUni)
                                .padding()
                                .onChange(of: isToggleOn) { newValue in
                                    // Обработка изменения состояния Toggle
                                    isDarkModeOn = newValue // Включение темной темы
                                    UserDefaults.standard.set(newValue, forKey: "isDarkModeOn") // Обновление значения в AppStorage
                                }
                            }
                            HStack {
                                Button(action: forvard) {
                                    Text("Пользовательское соглашение")
                                    Spacer()
                                    Image("Chevron")
                                }
                                .padding()
                                .tint(.blackDayNight)
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
                .background(Color.whiteDayNight)
                .tabItem {
                    Image("TabSettings")
                        .renderingMode(.template)
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
    ContentView(isDarkModeOn: .constant(false))
}
