//
//  UITraitCollection+Extensions.swift
//  SnapshotTestTests
//
//  Created by Игорь Чумиков on 11.08.2023.
//

import SnapshotTesting
import UIKit

public extension UITraitCollection {
    /// iPhone 13 mini
    /// - Parameter orientation: Ориентация устройства
    /// - Returns: Размеры устройства
    static func iPhone13Mini(_ orientation: ViewImageConfig.Orientation) -> UITraitCollection {
        let base: [UITraitCollection] = [
            .init(forceTouchCapability: .available),
            .init(layoutDirection: .leftToRight),
            .init(preferredContentSizeCategory: .medium),
            .init(userInterfaceIdiom: .phone),
        ]
        switch orientation {
        case .landscape:
            return .init(
                traitsFrom: base + [
                    .init(horizontalSizeClass: .compact),
                    .init(verticalSizeClass: .compact),
                ]
            )
        case .portrait:
            return .init(
                traitsFrom: base + [
                    .init(horizontalSizeClass: .compact),
                    .init(verticalSizeClass: .regular),
                ]
            )
        }
    }
    
    /// iPhone 13
    /// - Parameter orientation: Ориентация устройства
    /// - Returns: Размеры устройства
    static func iPhone13(_ orientation: ViewImageConfig.Orientation) -> UITraitCollection {
        let base: [UITraitCollection] = [
            .init(forceTouchCapability: .available),
            .init(layoutDirection: .leftToRight),
            .init(preferredContentSizeCategory: .medium),
            .init(userInterfaceIdiom: .phone),
        ]
        switch orientation {
        case .landscape:
            return .init(
                traitsFrom: base + [
                    .init(horizontalSizeClass: .compact),
                    .init(verticalSizeClass: .compact),
                ]
            )
        case .portrait:
            return .init(
                traitsFrom: base + [
                    .init(horizontalSizeClass: .compact),
                    .init(verticalSizeClass: .regular),
                ]
            )
        }
    }
    
    /// iPhone 13 Pro Max
    /// - Parameter orientation: Ориентация устройства
    /// - Returns: Размеры устройства
    static func iPhone13ProMax(_ orientation: ViewImageConfig.Orientation) -> UITraitCollection {
        let base: [UITraitCollection] = [
            .init(forceTouchCapability: .available),
            .init(layoutDirection: .leftToRight),
            .init(preferredContentSizeCategory: .medium),
            .init(userInterfaceIdiom: .phone),
        ]
        switch orientation {
        case .landscape:
            return .init(
                traitsFrom: base + [
                    .init(horizontalSizeClass: .compact),
                    .init(verticalSizeClass: .compact),
                ]
            )
        case .portrait:
            return .init(
                traitsFrom: base + [
                    .init(horizontalSizeClass: .regular),
                    .init(verticalSizeClass: .regular),
                ]
            )
        }
    }
}

