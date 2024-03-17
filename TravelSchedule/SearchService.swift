//
//  SearchService.swift
//  TravelSchedule
//
//  Created by Margarita Pitinova on 17.03.2024.
//

import OpenAPIRuntime
import OpenAPIURLSession

typealias Intervals = Components.Schemas.Intervals

protocol SearchServiceProtocol {
  func getSearch(from: String, to: String) async throws -> Intervals
}

final class SearchService: SearchServiceProtocol {
  private let client: Client
  
  init(client: Client) {
    self.client = client
  }
  
  func getSearch(from: String, to: String) async throws -> Intervals {

      let response = try await client.getSearch(query: .init(
        from: from,
        to: to
    ))
    return try response.ok.body.json
  }
}
