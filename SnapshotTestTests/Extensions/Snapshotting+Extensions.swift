//
//  Snapshotting+Extensions.swift
//  SnapshotTestTests
//
//  Created by Игорь Чумиков on 11.08.2023.
//

import SnapshotTesting
import UIKit

// MARK: - Snapshotting + UIView && UIImage

public extension Snapshotting where Value == UIView, Format == UIImage {
    static func image(
        on config: ViewImageConfig,
        drawHierarchyInKeyWindow: Bool,
        precision: Float,
        traits: UITraitCollection
    ) -> Snapshotting {
        Snapshotting.image(
            drawHierarchyInKeyWindow: drawHierarchyInKeyWindow,
            precision: precision,
            size: nil,
            traits: traits
        )
        .asyncPullback { view in
            Async { callback in
                defer { callback(view) }
                guard let width = config.size?.width else {
                    return
                }
                view.frame.size = CGSize(width: width, height: view.intrinsicContentSize.height)
            }
        }
    }
}
