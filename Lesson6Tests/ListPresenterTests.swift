//
//  ListPresenterTests.swift
//  Lesson6Tests
//
//  Created by Мария Коханчик on 01.04.2022.
//  Copyright © 2022 Alex Apriamashvili. All rights reserved.
//

import XCTest
@testable import Lesson6

final class ListPresenterTests: XCTestCase {
    
    var sut: ListPresenter!
    var view: ListViewController!
    var interactor: ListInteractor!
    var router: ListRouter!

    override func setUp() {
        super.setUp()
        
        router = ListRouter()
        interactor = ListInteractor(service: <#T##ArtistService#>)
        view = ListViewController()
        sut = ListPresenter()
        sut.router = router
        sut.interactor = interactor
        sut.view = view
    }

    override func tearDown() {
        router = nil
        interactor = nil
        view = nil
        sut = nil
        super.tearDown()
    }

}
