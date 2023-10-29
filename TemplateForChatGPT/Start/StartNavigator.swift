//
//  StartNavigator.swift
//  TemplateForChatGPT
//
//  Created by shotaro fukushima on 2023/10/29.
//

import UIKit

protocol StartNavigatorProtocol {
    func navigate(to destination: StartDestination)
}

enum StartDestination {
    case userView
    // 他の遷移先もここに追加
}

class StartNavigator: StartNavigatorProtocol {
    var viewController: UIViewController?
    
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    
    func navigate(to destination: StartDestination) {
        switch destination {
        case .userView:
            let userViewController = UserViewController()
            let navigationViewController = UINavigationController(rootViewController: userViewController)
            viewController?.present(navigationViewController, animated: true)
        }
    }
}
