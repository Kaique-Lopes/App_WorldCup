//
//  WorldCup.swift
//  App_WorldCup
//
//  Created by Kaique Lopes de Oliveira on 30/09/21.
//

import Foundation

struct WorldCup: Codable{
    let year: String
    let country: String
    let winner: String
    let vice: String
    let winnerScore: String
    let viceScore: String
    let matches: [Match]
}

struct Match: Codable{
    let stage: String
    let games: [Game]
}

struct Game: Codable{
    let home: String
    let away: String
    let score: String
    let date: String
}




//"year": 2014,
//"country": "Brasil",
//"winner": "Alemanha",
//"vice": "Argentina",
//"winnerScore": "1",
//"viceScore": "0",
//"matches": [{
//        "stage": "Fase de grupos",
//        "games": [{
