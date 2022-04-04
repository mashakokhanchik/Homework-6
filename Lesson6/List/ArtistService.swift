//
//  ArtistService.swift
//  Lesson6
//
//  Created by Мария Коханчик on 01.04.2022.
//  Copyright © 2022 Alex Apriamashvili. All rights reserved.
//

import Foundation

enum Result<T> {
    
    case success(T)
    case failure(Error)

}

protocol ArtistService {
    
    typealias ArtistListResult = (Result<[ListViewModel.Artist]>) -> ()
    typealias ArtistDetailRessult = (Result<[ListViewModel.Artist]>) -> ()
    
    func fetcArtistList(_ completion: @escaping ArtistListResult)
    func fetchArtist(at index: Int, _ completion: @escaping ArtistDetailRessult)
    
}

final class ArtistServiceImpl: ArtistService {
    
    func fetcArtistList(_ completion: @escaping ArtistListResult) {
        completion(.success(ModelStubFactory.list()))
    }
    
    func fetchArtist(at index: Int, _ completion: @escaping ArtistDetailRessult) {
        completion(.success(ModelStubFactory.detail()))
    }
    
}
