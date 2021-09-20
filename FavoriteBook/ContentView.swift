//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Selcuk Baki on 20/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            List {
                ForEach(myFavorites) { favorite in
                    Section(header: Text(favorite.title)) {
                        ForEach(favorite.elements) { element in
                            NavigationLink(
                                destination: DetailsView(chosenFavoriteElement: element),
                                label: {
                                    Text(element.name)
                                })
                        }
                    }
                }
            }.navigationTitle("Favorite Book").font(.body)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
