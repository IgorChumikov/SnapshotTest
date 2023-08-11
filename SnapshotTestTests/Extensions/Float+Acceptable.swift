//
//  Float+Acceptable.swift
//  SnapshotTestTests
//
//  Created by Игорь Чумиков on 11.08.2023.
//

import Foundation

public extension Float {
    /// Точность сравнения скриншотов.
    /// - Точность не может быть 100%, так как UIKit отличается на arm и intel устройствах
    static let acceptable: Float = 1
}

public extension UInt8 {
    /// Точность сравнения subpixel
    static let acceptable: UInt8 = 0
}
