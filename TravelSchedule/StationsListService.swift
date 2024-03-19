//
//  StationsListService.swift
//  TravelSchedule
//
//  Created by Margarita Pitinova on 17.03.2024.
//

import OpenAPIRuntime
import OpenAPIURLSession
import Foundation

typealias StationsList = Components.Schemas.StationsList

protocol StationsListServiceProtocol {
    func getStationsList() async throws -> StationsList
}

final class StationsListService: StationsListServiceProtocol {
  private let client: Client
  private let apikey: String
  
  init(client: Client, apikey: String) {
    self.client = client
    self.apikey = apikey
  }
  
  func getStationsList() async throws -> StationsList {
      let response = try await client.getStationsList(query: .init(
          apikey: apikey
      ))
      let body = try response.ok.body.html
      let data = try await Data(collecting: body, upTo: 100 * 1024 * 1024)
      print(data)
      let stationsList = try JSONDecoder().decode(StationsList.self, from: data)
      return stationsList
  }
}
