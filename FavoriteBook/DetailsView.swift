//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Selcuk Baki on 20/9/21.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenFavoriteElement : FavoriteElements
    var body: some View {
        VStack{
            Image(chosenFavoriteElement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("\(chosenFavoriteElement.name)").font(.largeTitle)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenFavoriteElement: darkKnight)
    }
}
