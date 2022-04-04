//
//  ListAssemblyTests.swift
//  Lesson6Tests
//
//  Created by Мария Коханчик on 01.04.2022.
//  Copyright © 2022 Alex Apriamashvili. All rights reserved.
//

import XCTest
@testable import Lesson6

final class ListAssemblyTests: XCTestCase {

    func testViewAssembly() {
        let controller = ListAssembly.assemble(service: ArtistService.self as! ArtistService)
        XCTAssert(controller is ListViewController)
        let sut = controller as! ListViewController
        XCTAssertNotNil(sut.router)
        XCTAssertNotNil(sut.output)
    }
    
    func testPresenterAssembly() {
        let presenter = (ListAssembly.assemble(service: ArtistService.self as! ArtistService) as! ListViewController).output
        XCTAssert(presenter is ListPresenter)
        let sut = presenter as! ListPresenter
        XCTAssertNotNil(sut.interactor)
        XCTAssertNotNil(sut.router)
        XCTAssertNotNil(sut.view)
    }
    
    func testInteractorAssembly() {
        let presenter = (ListAssembly.assemble(service: ArtistService.self as! ArtistService) as! ListViewController).output
        let interactor = (presenter as! ListPresenter).interactor
        XCTAssert(interactor is ListInteractor)
        let sut = interactor as! ListInteractor
        XCTAssertNotNil(sut.output)
    }
    
    func testRouterAssembly() {
        let presenter = (ListAssembly.assemble(service: ArtistService.self as! ArtistService) as! ListViewController).output
        let router = (presenter as! ListPresenter).router
        XCTAssert(router is ListRouter)
        let sut = router as! ListRouter
        XCTAssertNotNil(sut.view)
    }

}
