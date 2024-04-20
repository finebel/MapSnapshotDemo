//
//  MapSnapshotDemoTests.swift
//  MapSnapshotDemoTests
//
//  Created by Finn Ebeling on 20.04.24.
//

import XCTest
@testable import MapSnapshotDemo

final class MapSnapshotDemoTests: XCTestCase {

    func test_temp() {
        let sut = makeSUT()
        
        record(snapshot: sut.snapshot(for: .iPhone15Pro(style: .light)), named: "TEMP")
    }
    
    private func makeSUT() -> UIViewController {
        let bundle = Bundle(for: ViewController.self)
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        let controller = storyboard.instantiateInitialViewController()!

        controller.loadViewIfNeeded()
        
        return controller
    }

}
