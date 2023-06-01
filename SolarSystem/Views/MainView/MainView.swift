//
//  MainView.swift
//  SolarSystem
//
//  Created by KEVIN on 30/05/2023.
//

import SwiftUI

struct MainView: View {
    
    var planets = Datas().allPlanets
    @State var current = 0
    
    var body: some View {
        ZStack(alignment: .top) {
            PlanetView(planet: planets[current])
            HStack {
                ButtonView(currentIndex: $current, forward: false)
                Spacer()
                ButtonView(currentIndex: $current, forward: true )
            }
            .padding()
        }
        .padding()
        .background(LinearGradient(
            colors: [Color("spaceColor"), Color("spaceDeep")],
            startPoint: .top,
            endPoint: .bottom))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
