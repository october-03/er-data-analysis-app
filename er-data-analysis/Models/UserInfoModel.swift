//
//  UserInfoModel.swift
//  er-data-analysis
//
//  Created by 김재영 on 2023/09/04.
//

import Foundation

struct UserInfo: Codable {
  let id: Int
  let nickname: String
  let lastUpdate: String
  let createdAt: String
  let gameUsers: [GameUser]
  
  enum CodingKeys: String, CodingKey {
    case id
    case nickname
    case lastUpdate
    case createdAt
    case gameUsers
  }
}

struct GameUser: Codable {
  let id: Int
  let characterNum: Int
  let KillCount: Int
  let DeathCount: Int
  let AssistCount: Int
  let TeamKillCount: Int
  let AnimalKillCount: Int
  let createdAt: String
  let updatedAt: String
  let game: GameInfo
}

struct GameInfo: Codable {
  let id: Int
  let startDtm: String
  let playTime: Int
  let createdAt: String
  let updatedAt: String
}
