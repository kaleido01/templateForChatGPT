//
//  BaseView.swift
//  TemplateForChatGPT
//
//  Created by shotaro fukushima on 2023/10/26.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    func setup() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubviews()
        setupConstraints()
        setColors()
    }

    func addSubviews() {}
    func setupConstraints() {}
    func setColors() {}
}

