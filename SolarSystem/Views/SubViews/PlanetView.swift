//
//  PlanetView.swift
//  SolarSystem
//
//  Created by KEVIN on 01/06/2023.
//

import SwiftUI

struct PlanetView: View {
    
    var planet: Planets
    
    var body: some View {
        VStack {
            Text(planet.name)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
            Image(planet.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit )
                .frame(height: 100)
            Divider()
                .frame(height: 3)
                .overlay(.white)
                .padding()
            Text("Position depuis le soleil : \(planet.position)")
                .foregroundColor(.white)
                .italic()
                .font(.title2)
                .underline()
            ScrollView(showsIndicators: false) {
                Text(planet.planetsDesc())
                    .padding()
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
        }
    }
}

struct PlanetView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetView(planet: Datas().jupiter)
            .background(Color(.systemIndigo))
    }
}
