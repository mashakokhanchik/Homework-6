//
//  List.swift
//  Lesson6
//
//  Created by Мария Коханчик on 01.04.2022.
//  Copyright © 2022 Alex Apriamashvili. All rights reserved.
//

import Foundation

protocol ListViewInput: AnyObject {
    
    func reload(_ viewModels: ListViewModel)
    
}

protocol ListViewOutput {
    
    func viewIsReady()
    
}

protocol ListInteractorInput {
    
    func obtainArtists()
    func obtainArtist(at index: Int) -> ListViewModel.Artist?
    
}

protocol ListInteractorOutput: AnyObject {
    
    func showResults(_ results: [ListViewModel.Artist])
    
}

protocol ListRouterInput {
    
    func gotoDetails(artist id: Int)
    
}
