//
//  UserViewController.swift
//  TemplateForChatGPT
//
//  Created by shotaro fukushima on 2023/10/29.
//

import UIKit
import SuperEasyLayout

class UserViewController: UIViewController {
    private var viewModel: UserViewModel!
    private var navigator: UserNavigator!

    private let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let ageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Next", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupViewModel()
    }
    
    func setupNavigator() {}
    
    func setupViewModel() {}
}

extension UserViewController {
    private func setupView() {
        addSubviews()
        setupConstraints()
        setColors()
        setNavigationBar()
    }

    private func addSubviews() {
        view.addSubview(nameLabel)
        view.addSubview(ageLabel)
        view.addSubview(nextButton)
    }

    private func setupConstraints() {
        nameLabel.centerX == view.centerX
        nameLabel.centerY == view.centerY
        
        ageLabel.centerX == view.centerX
        ageLabel.top == nameLabel.bottom + 15.0
        
        nextButton.centerX == view.centerX
        nextButton.bottom == view.bottom - 50.0
        
    }

    private func setColors() {
        view.backgroundColor = .white
    }

    private func setNavigationBar() {
        
    }
}
