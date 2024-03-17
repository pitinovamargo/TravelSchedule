//
//  ScheduleService.swift
//  TravelSchedule
//
//  Created by Margarita Pitinova on 17.03.2024.
//

import OpenAPIRuntime
import OpenAPIURLSession

typealias Schedule = Components.Schemas.ScheduleStation

protocol ScheduleServiceProtocol {
  func getSchedule(station: String) async throws -> Schedule
}

final class ScheduleService: ScheduleServiceProtocol {
  private let client: Client
  private let apikey: String
  
  init(client: Client, apikey: String) {
    self.client = client
    self.apikey = apikey
  }
  
  func getSchedule(station: String) async throws -> Schedule {

    let response = try await client.getSchedule(query: .init(
        apikey: apikey,
        station: station
    ))
    return try response.ok.body.json
  }
}
