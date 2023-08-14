//
//  ContentViewUIkitTests.swift
//  SnapshotTestTests
//
//  Created by Игорь Чумиков on 14.08.2023.
//

import XCTest
import SnapshotTesting
@testable import SnapshotTest
import UIKit

// MARK: - ContentViewUIkitTests

final class ContentViewUIkitTests: SnapshotTestCase {
    // MARK: - Properties

    var view: ContentViewUIkit!

    // MARK: - Overridden Functions

    override func setUpWithError() throws {
        view = .init()
    }

    override func tearDownWithError() throws {
        view = nil
    }
    
    // MARK: - Functions

    func testAssertSnapshots() {
        assertSnapshots(matching: view)
    }
}
