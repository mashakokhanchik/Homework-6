//
//  ListViewModel.swift
//  Lesson6
//
//  Created by Мария Коханчик on 01.04.2022.
//  Copyright © 2022 Alex Apriamashvili. All rights reserved.
//

import Foundation

struct ListViewModel {
    
    let artists: String
    
}

extension ListViewModel {
    
    struct Artist {
        
        let identifier: Int
        let name: String
        let albums: [Album]
    
    }

}

extension ListViewModel.Artist {
    
    struct Album {

        let name: String
        let songs: [Song]
        let date: Date
    
    }
    
}

extension ListViewModel.Artist.Album {
    
      struct Song {
    
        let name: String
        let duration: TimeInterval
    
      }
    
}

//struct Artist {
//
//  let identifier: Int
//  let name: String
//  let albums: [Album]
//
//  struct Album {
//
//    let name: String
//    let songs: [Song]
//    let date: Date
//  }
//
//  struct Song {
//
//    let name: String
//    let duration: TimeInterval
//  }
//}
