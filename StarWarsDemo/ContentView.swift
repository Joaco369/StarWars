//
//  ContentView.swift
//  StarWarsDemo
//
//  Created by Joaquin Villarreal on 16/09/2024.
//

import SwiftUI

struct ContentView: View {
<<<<<<< HEAD
  
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
=======
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("holaaa")
        }
        .padding()
    }
}

#Preview {
    ContentView()
>>>>>>> 3493521609f48fc4ee6a7911b3d90494fcf9d224
}
