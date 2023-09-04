//
//  UserInfo.swift
//  er-data-analysis
//
//  Created by 김재영 on 2023/08/31.
//

import SwiftUI

struct UserInfoView: View {
  @ObservedObject private var userInfoVM: UserInfoViewModel
  
  let userName: String
  
  init(userName: String) {
    self.userName = userName
    self.userInfoVM = UserInfoViewModel()
  }
    
  var body: some View {
    Text(userName)
      .onAppear {
        userInfoVM.getUserInfo(userName)
      }
  }
}

struct UserInfo_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView(userName: "또다시겨울ㅌ")
    }
}
