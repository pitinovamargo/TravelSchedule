//
//  NearestSettlementService.swift
//  TravelSchedule
//
//  Created by Margarita Pitinova on 17.03.2024.
//

import OpenAPIRuntime
import OpenAPIURLSession

typealias NearestSettlement = Components.Schemas.Settlement

protocol NearestSettlementServiceProtocol {
    func getNearestSettlement(lat: Double, lng: Double) async throws -> NearestSettlement
}

final class NearestSettlementService: NearestSettlementServiceProtocol {
  private let client: Client
  private let apikey: String
  
  init(client: Client, apikey: String) {
    self.client = client
    self.apikey = apikey
  }
  
  func getNearestSettlement(lat: Double, lng: Double) async throws -> NearestSettlement {

    let response = try await client.getNearestSettlement(query: .init(
        apikey: apikey,
        lat: lat,
        lng: lng
    ))
    return try response.ok.body.json
  }
}
