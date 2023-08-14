//
//  ContentViewUIkit.swift
//  SnapshotTest
//
//  Created by Игорь Чумиков on 14.08.2023.
//

import UIKit

// MARK: - ContentViewUIkit

class ContentViewUIkit: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Создаем лейбл
        let label = UILabel()
        label.text = "Привет, мир!"
        label.textAlignment = .center
        
        // Создаем вертикальный StackView и добавляем в него лейбл
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(label)
        
        // Добавляем StackView на экран
        view.addSubview(stackView)
        
        // Настройка Auto Layout для StackView
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

