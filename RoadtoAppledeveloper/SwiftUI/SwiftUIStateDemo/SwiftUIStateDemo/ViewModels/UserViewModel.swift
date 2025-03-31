//
//  UserViewModel.swift
//  SwiftUIStateDemo
//
//  Created by 김규철 on 3/28/25.
//

import Foundation
import Combine

class UserViewModel: ObservableObject {
    @Published private(set) var users: [UserData] = []
    
    func addUser(name: String) {
        // 이름을 입력 받아서 배열에 새 UserData 객체를 생성해서 추가 한다.
        let newUser = UserData(username: name)
        users.append(newUser)
    }
    
    // 삭제 기능 추가
    func deleteUser(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
    
}
