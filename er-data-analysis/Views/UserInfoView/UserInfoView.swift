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
    GeometryReader { geometry in
      ScrollView {
        VStack{
          if let userInfo = userInfoVM.userInfo {
            ForEach(userInfo.gameData, id: \.id) { gameUser in
              Text("\(gameUser.teamKillCount) / \(gameUser.killCount) / \(gameUser.deathCount) / \(gameUser.assistCount) / \(gameUser.animalKillCount)")
            }
          }
        }
        .frame(width: geometry.size.width)
      }
    }
      .onAppear {
        userInfoVM.getUserInfo(userName, 19, 1)
      }
  }
}

struct UserInfo_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView(userName: "또다시겨울")
    }
}
