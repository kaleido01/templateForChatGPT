//
//  StartViewModel.swift
//  TemplateForChatGPT
//
//  Created by shotaro fukushima on 2023/10/29.
//

import Foundation

class StartViewModel {
    private let user: User
    
    var name: String {
        return user.name
    }
    
    var ageText: String {
        return "\(user.age) years old"
    }
    
    init(user: User) {
        self.user = user
    }
}
