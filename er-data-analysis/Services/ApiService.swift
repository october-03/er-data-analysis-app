//
//  ApiService.swift
//  er-data-analysis
//
//  Created by 김재영 on 2023/09/04.
//

import Foundation
import Alamofire

enum APIError: Error {
  case badURL
  case noData
  case unknown
  case badRequest
}

class ApiService {
  func getUserInfo(nickname: String, seasonId: Int, page: Int, completion: @escaping (Result<UserInfo, APIError>) -> Void) {
    guard let url = URL.getUserInfo(nickname, seasonId, page) else {
      return completion(.failure(.badURL))
    }
    AF.request(url, method: .get)
      .responseData(completionHandler: {response in
        switch response.result {
        case let .success(data):
          do {
            let decorder = JSONDecoder()
            let result = try decorder.decode(UserInfo.self, from: data)
            completion(.success(result))
          } catch {
            completion(.failure(.unknown))
          }
        case .failure(_):
          completion(.failure(.badRequest))
        }
      })
  }
}
