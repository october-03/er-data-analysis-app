//
//  URLExtensions.swift
//  er-data-analysis
//
//  Created by 김재영 on 2023/09/04.
//

import Foundation

extension URL {
  static func getUserInfo(_ nickname: String) -> URL? {
    return URL(string: "http://\(Constants.BASE_URL)/user/\(nickname)")
  }
}
