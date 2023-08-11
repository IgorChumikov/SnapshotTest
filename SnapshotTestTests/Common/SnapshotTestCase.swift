//
//  SnapshotTestCase.swift
//  SnapshotTestTests
//
//  Created by Игорь Чумиков on 11.08.2023.
//

import SnapshotTesting
import XCTest

/// Базовый класс для Snapshot тестирования
open class SnapshotTestCase: XCTestCase {
    // MARK: - Static Properties

    /// Устройство, на котором нужно запускать snapshot тесты
    private static let requiredDevice = "iPhone15,2"
    /// Версия ОС, на которой нужно запускать snapshot тесты
    private static let requiredOSVersion = 16

    // MARK: - Overridden Functions

    override open class func setUp() {
        super.setUp()

        checkEnvironments()

        SnapshotTesting.diffTool = "ksdiff"
        UIView.setAnimationsEnabled(false)
    }

    // MARK: - Static Functions

    private static func checkEnvironments() {
        let deviceModel = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"]
        let osVersion = ProcessInfo().operatingSystemVersion
        guard deviceModel?.contains(requiredDevice) ?? false else {
            fatalError("Switch to using iPhone 14 Pro for these tests.")
        }

        guard osVersion.majorVersion == requiredOSVersion else {
            fatalError("Switch to iOS \(requiredOSVersion) for these tests.")
        }
    }
}
