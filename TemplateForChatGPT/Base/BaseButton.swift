//
//  BaseButton.swift
//  TemplateForChatGPT
//
//  Created by shotaro fukushima on 2023/11/02.
//

import UIKit

class BaseButton: UIButton {
    var tapHandler: ((BaseButton) -> Void)?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }


    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }


    func setup() {
        addTarget(self, action: #selector(touchUpInsideButton(_:)), for: .touchUpInside)
    }
    
}

extension BaseButton {
    @objc func touchUpInsideButton(_: Any) {
        tapHandler?(self)
    }
}


extension UIControl.State: Hashable {}
