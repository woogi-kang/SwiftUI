//
//  ContentView.swift
//  Africa
//
//  Created by Woogi on 2022/04/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      let animals: [Animal] = Bundle.main.decode("animals.json")
      
      NavigationView {
        List {
          CoverImageView()
            .frame(height: 300)
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
          
          ForEach(animals) { animal in
            NavigationLink(destination: AnimalDetailView(animal: animal)) {
              AnimalListItemView(animal: animal)
            }
          }
        } // List
        .listStyle(PlainListStyle())
        .navigationTitle("Africa")
        .navigationBarTitleDisplayMode(.large)
      } // Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
