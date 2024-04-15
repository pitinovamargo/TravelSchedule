//
//  TravelScheduleApp.swift
//  TravelSchedule
//
//  Created by Margarita Pitinova on 13.03.2024.
//

import SwiftUI
import OpenAPIURLSession

@main
struct TravelScheduleApp: App {
    
    init() {
//        do {
//            try executeApiCalls()
//        } catch {
//            print("some error appeared")
//        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
//    func executeApiCalls() throws {
//        let client = Client(
//            serverURL: try Servers.server1(),
//            transport: URLSessionTransport()
//        )
//        let key = "be2379d2-f005-46e5-ac6b-e0ecd14ad366"
//        
//        // Получаем список ближайших станций
//        let nearestStationsService = NearestStationsService(
//            client: client,
//            apikey: key
//        )
//        
//        Task {
//            let stations = try await nearestStationsService.getNearestStations(lat: 59.864177, lng: 30.319163, distance: 50)
//            print("Stations: \(stations)")
//        }
//        
//        // Получаем расписание рейсов между станциями
//        let searchService = SearchService(
//            client: client,
//            apikey: key
//        )
//        
//        Task {
//            let search = try await searchService.getSearch(from: "c146", to: "c213")
//            print("Search: \(search)")
//        }
//        
//        // Получаем расписание рейсов по станции
//        let scheduleService = ScheduleService(
//            client: client,
//            apikey: key
//        )
//        
//        Task {
//            print("Schedule request")
//            let schedule = try await scheduleService.getSchedule(station: "s9600213")
//            print("Schedule: \(schedule)")
//        }
//        
//        // Получаем список станций следования
//        let threadService = ThreadService(
//            client: client,
//            apikey: key
//        )
//        
//        Task {
//            let search = try await searchService.getSearch(from: "c146", to: "c213")
//            guard let uid = search.segments?.first?.thread?.uid else { fatalError() }
//            let thread = try await threadService.getThread(uid: uid)
//            print("Thread: \(thread)")
//        }
//        
//        // Получаем ближайший город
//        let nearestSettlementService = NearestSettlementService(
//            client: client,
//            apikey: key
//        )
//        
//        Task {
//            let settlement = try await nearestSettlementService.getNearestSettlement(lat: 59.864177, lng: 30.319163)
//            print("Nearest settlement: \(settlement)")
//        }
//        
//        // Получаем информацию о перевозчике
//        let carrierService = CarrierService(
//            client: client,
//            apikey: key
//        )
//        
//        Task {
//            let carrier = try await carrierService.getCarrier(code: 680)
//            print("Carrier: \(carrier)")
//        }
//        
//        // Получаем список всех доступных станций
//        let stationsListService = StationsListService(
//            client: client,
//            apikey: key
//        )
//        
//        Task {
//            let stationsList = try await stationsListService.getStationsList()
//            print("Stations list: \(stationsList)")
//        }
//        
//        // Получаем копирайт Яндекс Расписаний
//        let copyrightService = CopyrightService(
//            client: client,
//            apikey: key
//        )
//        
//        Task {
//            let copyright = try await copyrightService.getCopyright(format: "json")
//            print("Copyright: \(copyright)")
//        }
//    }
}
