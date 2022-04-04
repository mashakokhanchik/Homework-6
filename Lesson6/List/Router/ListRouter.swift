//
//  ListRouter.swift
//  Lesson6
//
//  Created by Мария Коханчик on 01.04.2022.
//  Copyright © 2022 Alex Apriamashvili. All rights reserved.
//

import Foundation
import UIKit

final class ListRouter {
    
    weak var view: UIViewController?
    
}

extension ListRouter: ListRouterInput {
    
    func gotoDetails(artist id: Int) {
        let details = DetailAssembly.assemble(artistId: id)
        view?.navigationController?.pushViewController(details, animated: true)
    }
    
}
