//
//  ListAssembly.swift
//  Lesson6
//
//  Created by Мария Коханчик on 01.04.2022.
//  Copyright © 2022 Alex Apriamashvili. All rights reserved.
//

import Foundation
import UIKit

struct ListAssembly {
    
    static func assemble(service: ArtistService) -> UIViewController {
        let view = ListViewController()
        let presenter = ListPresenter()
        let interactor = ListInteractor(service: service)
        let router = ListRouter()
        
        view.output = presenter
        view.router = router
        presenter.view = view
        presenter.interactor = interactor
        interactor.output = presenter
        
        return view
    }
    
}
