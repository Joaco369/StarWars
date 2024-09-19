//
//  StarCardView.swift
//  StarWarsDemo
//
//  Created by Joaquin Villarreal on 17/09/2024.
//

import SwiftUI

struct StarCardView: View {
  
  let card: StarCard
  
  var body: some View {
    ZStack{
      Color(uiColor: .quaternaryLabel).ignoresSafeArea(.all)
        .cornerRadius(20)
      VStack{
        HStack{
          VStack(alignment: .leading){
            Text(card.nombre)
              .font(.headline)
            Text(card.raza)
              .foregroundStyle(.secondary)
            Text(card.afiliacion.formatted(.list(type: .and)))
              .font(.footnote)
          }
          Spacer()
          Image(card.imagen)
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 150)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
      }
      .padding()
    }
  }
}

#Preview {
  StarCardView(card: .test)
}
