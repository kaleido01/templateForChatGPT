//
//  UserNavigator.swift
//  TemplateForChatGPT
//
//  Created by shotaro fukushima on 2023/10/29.
//

import UIKit

protocol UserNavigatorProtocol {
    func navigate(to destination: UserDestination)
}

enum UserDestination {
    // 他の遷移先もここに追加
}

class UserNavigator: UserNavigatorProtocol {
    var viewController: UIViewController?
    
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    
    func navigate(to destination: UserDestination) {
        switch destination {}
    }
}
