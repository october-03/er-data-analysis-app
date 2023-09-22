//
//  UserInfoViewModel.swift
//  er-data-analysis
//
//  Created by 김재영 on 2023/09/04.
//

import Foundation

class UserInfoViewModel: ObservableObject {
  @Published var userInfo: UserInfo?
  var apiService = ApiService()
  
  init(userInfo: UserInfo? = nil) {
    self.userInfo = userInfo
  }
  
  func getUserInfo(_ nickname: String, _ seasonId: Int, _ page: Int) {
    apiService.getUserInfo(nickname: nickname, seasonId: seasonId, page: page, completion: { [weak self] result in
      guard let self = self else { return }
      switch result {
      case let .success(result):
        self.userInfo = result
      case let .failure(error):
        debugPrint(error)
      }
    })
  }
  
}
