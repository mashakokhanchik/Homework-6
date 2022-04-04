//
//  ListInteractor.swift
//  Lesson6
//
//  Created by Мария Коханчик on 01.04.2022.
//  Copyright © 2022 Alex Apriamashvili. All rights reserved.
//

import Foundation

final class ListInteractor {
     
    weak var output: ListInteractorOutput?
    private let service: ArtistService
    
    private var artistList: [ListViewModel.Artist] = []
    
    init(service: ArtistService) {
        self.service = service
    }
    
}

extension ListInteractor: ListInteractorInput {
    
    func obtainArtists() {
        service.fetcArtistList { [weak self] result in
            guard let strongSelf = self else { return }
            switch result {
            case let .success(list):
                strongSelf.artistList += list
                strongSelf.output?.showResults(strongSelf.artistList)
            case .failure(_):
                strongSelf.artistList.self
            }
        }
    }
    
    func obtainArtist(at index: Int) -> ListViewModel.Artist? {
        guard index < artistList.count else { return nil }
        return artistList[index]
    }
    
}
