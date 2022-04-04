//
//  ListPresenter.swift
//  Lesson6
//
//  Created by Мария Коханчик on 01.04.2022.
//  Copyright © 2022 Alex Apriamashvili. All rights reserved.
//

import Foundation
import UIKit

final class ListPresenter: NSObject {
    
    weak var view: ListViewInput?
    var router: ListRouterInput?
    var interactor: ListInteractorInput?
    
}

extension ListPresenter: ListViewOutput {
    
    func viewIsReady() {
        interactor?.obtainArtists()
    }
    
}

extension ListPresenter: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        guard let artistID = interactor?.obtainArtist(at: indexPath.row)?.identifier else { return }
        router?.gotoDetails(artist: artistID)
    }
    
}

extension ListPresenter: ListInteractorOutput {
    
    func showResults(_ results: [ListViewModel.Artist]) {
        //view?.reload(results.map { ListViewModel(artists: $0.name) })
    }
    
}
