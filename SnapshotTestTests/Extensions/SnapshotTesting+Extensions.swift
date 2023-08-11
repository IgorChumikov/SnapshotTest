//
//  SnapshotTesting+Extensions.swift
//  SnapshotTestTests
//
//  Created by Игорь Чумиков on 11.08.2023.
//

import SnapshotTesting
import SwiftUI
import XCTest

/// Стандартные устройства для snapshot тестов
public var devicesForSnapshotTestings: [ViewImageConfig] = [.iPhoneSe, .iPhone8, .iPhone13,.iPhone13(.landscape), .iPadMini(.portrait), .iPadMini(.landscape)]

// MARK: - SnapshotLayout

public enum SnapshotLayout {
    case component
    case screen
}

/// Проверка что вью соответствует записанному снепшоту.
/// Подходит для проверки отдельных вью по фиксированному, либо автоматически высчитываемому размеру
///
/// - Parameters:
///   - view: Вью которая будет сравниваться со снепшотом
///   - size: Фиксированный размер снепшота, который будет сделан. По умолчанию nil
///   - recording: Нужно ли записать снепшот
///   - timeout: Время за которое должен быть сгенерирован снепшот.
///   - file: Файл, в котором произошел сбой. По умолчанию используется имя файла теста, в котором была вызвана эта функция.
///   - testName: Имя теста, в котором произошел сбой. По умолчанию используется имя функции тестового примера, в котором была
/// вызвана эта функция.
///   - line: Номер строки, в которой произошел сбой. По умолчанию используется номер строки, для которой была вызвана эта
/// функция.

@inlinable
public func assertSnapshot<Value: SwiftUI.View>(
    matching view: Value,
    with size: CGSize? = nil,
    record recording: Bool = false,
    timeout: TimeInterval = 5,
    file: StaticString = #file,
    testName: String = #function,
    line: UInt = #line
) {
    assertSnapshot(
        matching: view.frame(width: size?.width, height: size?.height).fixedSize(),
        as: .image,
        record: recording,
        timeout: timeout,
        file: file,
        testName: testName,
        line: line
    )
}

/// Проверка что вью соответствует записанному снепшоту.
///
/// - Parameters:
///   - view: Вью которая будет сравниваться со снепшотом
///   - layout: Тип размера снепшота, который будет сделан. По умолчанию как компонент
///   - recording: Нужно ли записать снепшот
///   - timeout: Время за которое должен быть сгенерирован снепшот.
///   - file: Файл, в котором произошел сбой. По умолчанию используется имя файла теста, в котором была вызвана эта функция.
///   - testName: Имя теста, в котором произошел сбой. По умолчанию используется имя функции тестового примера, в котором была
/// вызвана эта функция.
///   - line: Номер строки, в которой произошел сбой. По умолчанию используется номер строки, для которой была вызвана эта
/// функция.
@inlinable
public func assertSnapshots<Value: SwiftUI.View>(
    matching view: Value,
    as layout: SnapshotLayout = .component,
    record recording: Bool = false,
    timeout: TimeInterval = 5,
    file: StaticString = #file,
    testName: String = #function,
    line: UInt = #line
) {
    devicesForSnapshotTestings.forEach { config in
        switch layout {
        case .component:
            assertSnapshot(
                matching: view.frame(width: config.size?.width).fixedSize(),
                as: .image,
                record: recording,
                timeout: timeout,
                file: file,
                testName: testName,
                line: line
            )
        case .screen:
            assertSnapshot(
                matching: view,
                as: .image(layout: .device(config: config)),
                record: recording,
                timeout: timeout,
                file: file,
                testName: testName,
                line: line
            )
        }
    }
}

/// Проверка что вью соответствует записанному снепшоту.
///
/// - Parameters:
///   - view: Вью которая будет сравниваться со снепшотом
///   - recording: Нужно ли записать снепшот
///   - timeout: Время за которое должен быть сгенерирован снепшот.
///   - file: Файл, в котором произошел сбой. По умолчанию используется имя файла теста, в котором была вызвана эта функция.
///   - testName: Имя теста, в котором произошел сбой. По умолчанию используется имя функции тестового примера, в котором была
/// вызвана эта функция.
///   - line: Номер строки, в которой произошел сбой. По умолчанию используется номер строки, для которой была вызвана эта
/// функция.
@inlinable
public func assertSnapshots(
    matching view: UIView,
    record recording: Bool = false,
    timeout: TimeInterval = 5,
    file: StaticString = #file,
    testName: String = #function,
    line: UInt = #line
) {
    assertSnapshots(
        matching: view,
        as: .images,
        record: recording,
        timeout: timeout,
        file: file,
        testName: testName,
        line: line
    )
}

/// Проверка что контроллер соответствует записанному снепшоту.
///
/// - Parameters:
///   - viewController: Контроллер который будет сравниваться со снепшотом
///   - recording: Нужно ли записать снепшот
///   - timeout: Время за которое должен быть сгенерирован снепшот.
///   - file: Файл, в котором произошел сбой. По умолчанию используется имя файла теста, в котором была вызвана эта функция.
///   - testName: Имя теста, в котором произошел сбой. По умолчанию используется имя функции тестового примера, в котором была
/// вызвана эта функция.
///   - line: Номер строки, в которой произошел сбой. По умолчанию используется номер строки, для которой была вызвана эта
/// функция.
@inlinable
public func assertSnapshots(
    matching viewController: UIViewController,
    record recording: Bool = false,
    timeout: TimeInterval = 5,
    file: StaticString = #file,
    testName: String = #function,
    line: UInt = #line
) {
    assertSnapshots(
        matching: viewController,
        as: .images,
        record: recording,
        timeout: timeout,
        file: file,
        testName: testName,
        line: line
    )
}


