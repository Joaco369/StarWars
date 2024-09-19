//
//  ContentView.swift
//  StarWarsDemo
//
//  Created by Joaquin Villarreal on 16/09/2024.
//

import SwiftUI

struct ContentView: View {
  
  @State var vm = StarWarsVM()
  
  var body: some View {
    NavigationStack {
      ZStack {
        VStack {
          List {
            ForEach(vm.cards) { card in
              StarCardView(card: card)
            }
          }
          .listStyle(.plain)
        }
        .background(Color(uiColor: .systemIndigo).ignoresSafeArea(.all))
        .navigationTitle("Star Wars")
      }
    }
  }
}

#Preview {
  ContentView(vm: StarWarsVM(repository: RepositoryTest()))
}
