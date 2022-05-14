//
//  DigimonGridView.swift
//  DigimonIndex
//
//  Created by Jesús Sánchez on 28/02/22.
//

import SwiftUI

struct DigimonGridView: View {
    var imageURL: String
    var digimonName: String

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Image(systemName: imageURL)
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)

            Text(digimonName)
        }
    }
}

struct DigimonGridView_Previews: PreviewProvider {
    static var previews: some View {
        DigimonGridView(imageURL: "pencil", digimonName: "Digimon")
    }
}
