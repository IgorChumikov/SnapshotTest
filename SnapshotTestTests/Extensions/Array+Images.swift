//
//  Array+Images.swift
//  SnapshotTestTests
//
//  Created by Игорь Чумиков on 11.08.2023.
//

import SnapshotTesting
import UIKit

// MARK: - Array + Snapshotting

public extension Array where Element == Snapshotting<UIViewController, UIImage> {
    // MARK: - Static Computed Properties

    /// A snapshot strategy for comparing view controller views based on pixel equality.
    static var images: [Snapshotting<UIViewController, UIImage>] {
        .images()
    }

    // MARK: - Static Functions

    /// A snapshot strategies for comparing view controller views based on pixel equality with acceptable threshold settings.
    ///
    /// - Parameters:
    ///   - configs: A set of devices configuration settings.
    ///   - precision: The percentage of pixels that must match.
    ///   - subpixelThreshold: The byte-value threshold at which two subpixels are considered different.
    ///   - size: A view size override.
    ///   - traits: A trait collection override.
    @inlinable
    static func images(
        on configs: [ViewImageConfig] = devicesForSnapshotTestings,
        precision: Float = 1,
        subpixelThreshold: UInt8 = .acceptable,
        size: CGSize? = nil,
        traits: UITraitCollection = .init()
    ) -> [Snapshotting<UIViewController, UIImage>] {
        configs.map { config in
            Snapshotting.image(on: config, precision: precision, size: size, traits: traits)
        }
    }
}

// MARK: - Array + Snapshotting

public extension Array where Element == Snapshotting<UIView, UIImage> {
    // MARK: - Static Computed Properties

    /// A snapshot strategy for comparing view controller views based on pixel equality.
    static var images: [Snapshotting<UIView, UIImage>] {
        .images()
    }

    // MARK: - Static Functions

    /// A snapshot strategy for comparing views based on pixel equality.
    ///
    /// - Parameters:
    ///   - configs: A set of devices configuration settings.
    ///   - drawHierarchyInKeyWindow: Utilize the simulator's key window in order to render `UIAppearance` and `UIVisualEffect`s.
    /// This option requires a host application for your tests and will _not_ work for framework test targets.
    ///   - precision: The percentage of pixels that must match.
    ///   - subpixelThreshold: The byte-value threshold at which two subpixels are considered different.
    ///   - traits: A trait collection override.
    @inlinable
    static func images(
        on configs: [ViewImageConfig] = devicesForSnapshotTestings,
        drawHierarchyInKeyWindow: Bool = false,
        precision: Float = 1,
        subpixelThreshold: UInt8 = .acceptable,
        traits: UITraitCollection = .init()
    ) -> [Snapshotting<UIView, UIImage>] {
        configs.map { config in
            .image(
                on: config,
                drawHierarchyInKeyWindow: drawHierarchyInKeyWindow,
                precision: precision,
                traits: traits
            )
        }
    }
}
