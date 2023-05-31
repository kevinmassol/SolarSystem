//
//  Datas.swift
//  SolarSystem
//
//  Created by KEVIN on 30/05/2023.
//

import Foundation

class Datas {
    let mercure = Planets(position: 1, name: "Mercure")
    let venus = Planets(position: 2, name: "Venus")
    let terre = Planets(position: 3, name: "Terre")
    let mars = Planets(position: 4, name: "Mars")
    let jupiter = Planets(position: 5, name: "Jupiter")
    let saturne = Planets(position: 6, name: "Saturne")
    let uranus = Planets(position: 7, name: "Uranus")
    let neptune = Planets(position: 8, name: "Neptune")
    let pluton = Planets(position: 9, name: "Pluton")
    
    var allPlanets: [Planets] {
        return [mercure, venus, terre, mars, jupiter, saturne, uranus, neptune, pluton]
    }
}
