//
//  URLExtensions.swift
//  er-data-analysis
//
//  Created by 김재영 on 2023/09/04.
//

import Foundation

extension URL {
  static func getUserInfo(_ nickname: String, _ seasonId: Int, _ page: Int) -> URL? {
    let urlStr = "http://\(Constants.BASE_URL)/user?nickname=\(nickname)&seasonId=\(seasonId)&page=\(page)"
    let encoded = urlStr.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
    let result = URL(string: encoded!)
    
    return result
  }
}
