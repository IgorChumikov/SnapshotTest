//
//  ContentViewTests2.swift
//  SnapshotTestTests
//
//  Created by Игорь Чумиков on 14.08.2023.
//

import XCTest
import SnapshotTesting
@testable import SnapshotTest
import SwiftUI

// MARK: - ContentViewTests

final class ContentViewTests2: SnapshotTestCase {
    // MARK: - Properties

    var view: ContentView!

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
        assertSnapshots(matching: view, as: .screen)
    }
}

