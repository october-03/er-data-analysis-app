//
//  ContentView.swift
//  er-data-analysis
//
//  Created by 김재영 on 2023/08/31.
//

import SwiftUI

struct MainView: View {
  @State var nickname = ""
  @State var isNavigate = false
  @State var showingAlert = false
  
  var body: some View {
    NavigationStack {
      VStack {
        TextField("닉네임을 입력해주세요", text: $nickname, onCommit: {
          if(nickname == "") {
            showingAlert = true
            return
          }
          isNavigate = true
        })
          .textFieldStyle(.roundedBorder)
          .padding(30)
          .keyboardType(.webSearch)
          .alert(isPresented: $showingAlert, content: {
            Alert(
              title: Text("알림"),
              message: Text("닉네임을 입력해주세요"),
              dismissButton: .default(Text("확인"))
            )
          })
        
          .navigationDestination(isPresented: $isNavigate) {
            UserInfoView(userName: nickname)
          }
        Spacer()
      }
      .preferredColorScheme(.light)
      .contentShape(Rectangle())
      .onTapGesture {
        hideKeyboard()
      }
    }
  }
  
  func hideKeyboard() {
    let resign = #selector(UIResponder.resignFirstResponder)
    UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
