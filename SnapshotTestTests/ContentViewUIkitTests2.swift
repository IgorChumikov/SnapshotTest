//
//  ContentViewUIkitTests2.swift
//  SnapshotTestTests
//
//  Created by Игорь Чумиков on 14.08.2023.
//

import XCTest
import SnapshotTesting
@testable import SnapshotTest
import UIKit

// MARK: - ContentViewUIkitTests

final class ContentViewUIkitTests2: SnapshotTestCase {
    // MARK: - Properties

    var view: ContentViewUIkit!

    // MARK: - Overridden Functions

    override func setUp() {
        super.setUp()
        
        view = .init()
    }

    override func tearDown() {
        super.tearDown()
        
        view = nil
    }
    
    // MARK: - Functions

    func testAssertSnapshots() {
        assertSnapshots(matching: view)
    }
}
