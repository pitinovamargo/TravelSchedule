//
//  ThreadService.swift
//  TravelSchedule
//
//  Created by Margarita Pitinova on 17.03.2024.
//

import OpenAPIRuntime
import OpenAPIURLSession

typealias Threadd = Components.Schemas.Thread

protocol ThreadServiceProtocol {
    func getThread(uid: String) async throws -> Threadd
}

final class ThreadService: ThreadServiceProtocol {
  private let client: Client
  private let apikey: String
  
  init(client: Client, apikey: String) {
    self.client = client
    self.apikey = apikey
  }
  
  func getThread(uid: String) async throws -> Threadd {

    let response = try await client.getThread(query: .init(
        apikey: apikey,
        uid: uid
    ))
    print(response)
    return try response.ok.body.json
  }
}
