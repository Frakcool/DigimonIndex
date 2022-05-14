//
//  ContentView.swift
//  DigimonIndex
//
//  Created by Jesús Sánchez on 01/02/22.
//

import SwiftUI

struct ContentView: View {
    let columns = [
        GridItem(.adaptive(minimum: 80))
    ]

    let data = (1...20).map { "Digimon \($0)" }

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(data, id: \.self) { digimon in
                        DigimonGridView(imageURL: "pencil",
                                        digimonName: digimon)
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Digimon Index")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
