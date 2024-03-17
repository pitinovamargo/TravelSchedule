//
//  CarrierService.swift
//  TravelSchedule
//
//  Created by Margarita Pitinova on 17.03.2024.
//

import OpenAPIRuntime
import OpenAPIURLSession

typealias Carrier = Components.Schemas.Carriers

protocol CarrierServiceProtocol {
    func getCarrier(code: Int) async throws -> Carrier
}

final class CarrierService: CarrierServiceProtocol {
  private let client: Client
  private let apikey: String
  
  init(client: Client, apikey: String) {
    self.client = client
    self.apikey = apikey
  }
  
  func getCarrier(code: Int) async throws -> Carrier {
    let response = try await client.getCarrier(query: .init(
        apikey: apikey,
        code: code
    ))
    return try response.ok.body.json
  }
}
