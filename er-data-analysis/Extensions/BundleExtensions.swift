//
//  ERDATAANALYSIS++Bundle.swift
//  er-data-analysis
//
//  Created by 김재영 on 2023/09/04.
//

import Foundation

extension Bundle {
  var baseUrl: String {
    guard let file = self.path(forResource: "Secrets", ofType: "plist") else { return "" }
    
    guard let resource = NSDictionary(contentsOfFile: file) else { return "" }
    guard let key = resource["BASE_URL"] as? String else {fatalError("Secrets.plist에 BaseURL 설정을 해주세요.")}
    return key
  }
}
