//
//  StartViewController.swift
//  TemplateForChatGPT
//
//  Created by shotaro fukushima on 2023/10/29.
//

import UIKit
import SuperEasyLayout

class StartViewController: UIViewController {
    private var viewModel: StartViewModel!
    private var navigator: StartNavigator?

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
    
    private let nextButton: BaseButton = {
        let button = BaseButton(type: .system)
        button.setTitle("Next", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupNavigator()
        setupViewModel()
    }
    
    func setupNavigator() {
        self.navigator = StartNavigator(viewController: self)
    }
    
    func setupViewModel() {
        let user = User(name: "John Doe", age: 28)
        viewModel = StartViewModel(user: user)
        
        nameLabel.text = viewModel.name
        ageLabel.text = viewModel.ageText
    }
    
}

extension StartViewController {
    private func setupView() {
        addSubviews()
        setupConstraints()
        setColors()
        setNavigationBar()
        
        nextButton.tapHandler = { [weak self] _ in
            guard let self else { return }
            navigator?.navigate(to: .userView)
        }

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
