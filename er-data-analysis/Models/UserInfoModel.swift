//
//  UserInfoModel.swift
//  er-data-analysis
//
//  Created by 김재영 on 2023/09/04.
//

import Foundation

struct UserInfo: Codable {
  let user: user
  let gameData: [gameData]
  let stats: [stats]
  
  enum CodingKeys: String, CodingKey {
    case user
    case gameData
    case stats
  }
}

struct user: Codable {
  let id: Int
  let nickname: String
  let lastUpdate: String
  let createdAt: String
}

struct gameData: Codable {
  let id: String
  let characterNum: Int
  let killCount: Int
  let deathCount: Int
  let assistCount: Int
  let teamKillCount: Int
  let animalKillCount: Int
  let seasonId: Int
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

struct stats: Codable {
  let id: String
  let seasonId: Int
  let matchingTeamMode: Int
  let mmr: Int
  let rank: Int
  let rankSize: Int
  let totalGames: Int
  let totalWins: Int
  let averageRank: Double
  let averageKills: Double
  let averageAssists: Double
  let averageHunts: Double
  let winRate: Double
  let top2Rate: Double
  let top3Rate: Double
}
