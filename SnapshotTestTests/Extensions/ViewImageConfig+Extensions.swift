//
//  ViewImageConfig+Extensions.swift
//  SnapshotTestTests
//
//  Created by Игорь Чумиков on 11.08.2023.
//

import SnapshotTesting
import UIKit

public extension ViewImageConfig {
    // MARK: - Static Properties

    /// Конфигурация iPhone 13
    static let iPhone13 = ViewImageConfig.iPhone13(.portrait)

    /// Конфигурация iPhone 13 mini
    static let iPhone13Mini = ViewImageConfig.iPhone13ProMax(.portrait)

    /// Конфигурация iPhone 13 max
    static let iPhone13ProMax = ViewImageConfig.iPhone13ProMax(.portrait)

    // MARK: - Static Functions

    /// Конфигурация iPhone 13
    /// - Parameter orientation: Ориентация устройства
    /// - Returns: Конфигурация
    static func iPhone13(_ orientation: Orientation) -> ViewImageConfig {
        let safeArea: UIEdgeInsets
        let size: CGSize
        switch orientation {
        case .landscape:
            safeArea = .init(top: 0, left: 50, bottom: 21, right: 50) // Примерные значения, поправьте по необходимости
            size = .init(width: 926, height: 428) // Примерные значения, поправьте по необходимости
        case .portrait:
            safeArea = .init(top: 47, left: 0, bottom: 34, right: 0)
            size = .init(width: 428, height: 926) // Примерные значения, поправьте по необходимости
        }
        return .init(safeArea: safeArea, size: size, traits: .iPhone13(orientation))
    }

    /// Конфигурация iPhone 13 mini
    /// - Parameter orientation: Ориентация устройства
    /// - Returns: Конфигурация
    static func iPhone13Mini(_ orientation: Orientation) -> ViewImageConfig {
        let safeArea: UIEdgeInsets
        let size: CGSize
        switch orientation {
        case .landscape:
            safeArea = .init(top: 0, left: 47, bottom: 21, right: 47)
            size = .init(width: 812, height: 375)
        case .portrait:
            safeArea = .init(top: 47, left: 0, bottom: 34, right: 0)
            size = .init(width: 375, height: 812)
        }
        return .init(safeArea: safeArea, size: size, traits: .iPhone13Mini(orientation))
    }

    /// Конфигурация iPhone 13 max
    /// - Parameter orientation: Ориентация устройства
    /// - Returns: Конфигурация
    static func iPhone13ProMax(_ orientation: Orientation) -> ViewImageConfig {
        let safeArea: UIEdgeInsets
        let size: CGSize
        switch orientation {
        case .landscape:
            safeArea = .init(top: 0, left: 50, bottom: 21, right: 50) // Примерные значения, поправьте по необходимости
            size = .init(width: 926, height: 428) // Примерные значения, поправьте по необходимости
        case .portrait:
            safeArea = .init(top: 47, left: 0, bottom: 34, right: 0)
            size = .init(width: 428, height: 926) // Примерные значения, поправьте по необходимости
        }
        return .init(safeArea: safeArea, size: size, traits: .iPhone13ProMax(orientation))
    }
}


