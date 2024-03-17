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
        do {
            try executeApiCalls()
        } catch {
            print("some error appeared")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    func executeApiCalls() throws {
        let client = Client(
            serverURL: try Servers.server1(),
            transport: URLSessionTransport()
        )
        
        let service = NearestStationsService(
            client: client,
            apikey: "be2379d2-f005-46e5-ac6b-e0ecd14ad366"
        )
        
        Task {
            let stations = try await service.getNearestStations(lat: 59.864177, lng: 30.319163, distance: 50)
            print("Stations: \(stations)")
        }
        
        let searchService = SearchService(
            client: client,
            apikey: "be2379d2-f005-46e5-ac6b-e0ecd14ad366"
        )
        
        Task {
            let search = try await searchService.getSearch(from: "c146", to: "c213")
            print("Search: \(search)")
        }
        
        //404
        let scheduleService = ScheduleService(
            client: client,
            apikey: "be2379d2-f005-46e5-ac6b-e0ecd14ad366"
        )
        
        Task {
            print("Schedule request")
            let schedule = try await scheduleService.getSchedule(station: "s9600213")
            print("Schedule: \(schedule)")
        }
        
        //404
        let threadService = ThreadService(
            client: client,
            apikey: "be2379d2-f005-46e5-ac6b-e0ecd14ad366"
        )
        
        Task {
            let thread = try await threadService.getThread(uid: "038AA_tis")
            print("Thread: \(thread)")
        }
        
        
        let nearestSettlementService = NearestSettlementService(
            client: client,
            apikey: "be2379d2-f005-46e5-ac6b-e0ecd14ad366"
        )
        
        Task {
            let settlement = try await nearestSettlementService.getNearestSettlement(lat: 59.864177, lng: 30.319163)
            print("Nearest settlement: \(settlement)")
        }
        
        //404
        let carrierService = CarrierService(
            client: client,
            apikey: "be2379d2-f005-46e5-ac6b-e0ecd14ad366"
        )
        
        Task {
            let carrier = try await carrierService.getCarrier(code: "TK")
            print("Carrier: \(carrier)")
        }
        
        
        
        //404
        let stationsListService = StationsListService(
            client: client,
            apikey: "be2379d2-f005-46e5-ac6b-e0ecd14ad366"
        )
        
        Task {
            let stationsList = try await stationsListService.getStationsList()
            print("Stations list: \(stationsList)")
        }
        
        
        let copyrightService = CopyrightService(
            client: client,
            apikey: "be2379d2-f005-46e5-ac6b-e0ecd14ad366"
        )
        
        Task {
            let copyright = try await copyrightService.getCopyright(format: "json")
            print("Copyright: \(copyright)")
        }
    }
}
