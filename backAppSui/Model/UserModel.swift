//
//  UserModel.swift
//  backAppSui
//
//  Created by Daz N311 on 09.07.2025.
//

import SwiftUI

class UserSettings: ObservableObject {
  
  @Published var user: UserModel
  
  init(user: UserModel) {
    self.user = .init(
      name: "User",
      password: "",
      lastName: "",
      phone: "",
      adress: "",
      accessesAdress: [],
      imagesObject: [],
      avatar: .avatar2,
      status: .other)
  }
  
  func upd(username: String, password: String) {
    if username == "Nata" {
      user.status = .root
      user.avatar = .avatar2
    } else {
      user.status = .other
      user.avatar = .user
    }
    user.name = username
    user.password = password
  }
}

struct UserModel : Identifiable, Hashable {
  var id: String = UUID().uuidString
  var name: String
  var password: String
  var lastName: String
  var phone: String
  var adress: String
  var accessesAdress: [String]
  var imagesObject: [String]
  var avatar: ImageResource
  var status: statusEnum
  
  enum statusEnum: String {
    case root
    case client
    case other
  }
  var isAuth: Bool {
    return name != "User"
  }
}

let userSettingsDef: UserModel = .init(
  name: "User",
  password: "",
  lastName: "",
  phone: "",
  adress: "",
  accessesAdress: [],
  imagesObject: [],
  avatar: .avatar2,
  status: .other)
