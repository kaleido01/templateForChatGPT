//
//  ViewController.swift
//  TemplateForChatGPT
//
//  Created by shotaro fukushima on 2023/10/26.
//

import UIKit
import SuperEasyLayout

class ViewController: UIViewController {
    
    var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 10)
        label.textAlignment = .center
        label.text = "Hello world"
        label.textColor = .black
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupView()
    }
    
    
    
    
}

extension ViewController {
    private func setupView() {
        addSubviews()
        setupConstraints()
        setColors()
        setNavigationBar()
    }

    private func addSubviews() {
        view.addSubview(titleLabel)
    }

    private func setupConstraints() {
        titleLabel.centerX == view.centerX
        titleLabel.centerY == view.centerY
    }

    private func setColors() {
        view.backgroundColor = .white
    }

    private func setNavigationBar() {
        
    }
}
