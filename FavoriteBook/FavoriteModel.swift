//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Selcuk Baki on 20/9/21.
//

import Foundation
import SwiftUI

struct FavoriteModel : Identifiable {
    var id = UUID()
    var title = String()
    var elements : [FavoriteElements]
    
}

struct FavoriteElements : Identifiable{
    var id = UUID()
    
    var name : String
    var imageName : String
    var description : String
}

let metallica = FavoriteElements(name: "Metallica", imageName: "metallica", description: "No 1 Music Band")
let prestige = FavoriteElements(name: "The Prestige", imageName: "prestige", description: "No 1 Movie")
let batman = FavoriteElements(name: "Batman", imageName: "batman", description: "No 2 Movie")

let favoriteThings = FavoriteModel(id: UUID(), title: "Favorite Things", elements: [metallica, prestige, batman])

let pulpFiction = FavoriteElements(name: "Pulp Fiction", imageName: "pulpfiction", description: "Movie")
let darkKnight = FavoriteElements(name: "The Dark Knight", imageName: "darkKnight", description: "Movie")
let favoriteMovies = FavoriteModel(id: UUID(), title: "Movies", elements: [prestige, batman, pulpFiction, darkKnight])

let myFavorites = [favoriteThings, favoriteMovies]
