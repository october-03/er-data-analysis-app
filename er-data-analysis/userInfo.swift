//
//  UserInfo.swift
//  er-data-analysis
//
//  Created by 김재영 on 2023/08/31.
//

import SwiftUI

struct UserInfo: View {
  let userName: String
  
  init(userName: String) {
    self.userName = userName
  }
    
  var body: some View {
      Text(userName)
  }
}

struct UserInfo_Previews: PreviewProvider {
    static var previews: some View {
        UserInfo(userName: "또다시겨울ㅌ")
    }
}
