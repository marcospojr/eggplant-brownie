//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Marcos Jr on 26/10/20.
//

import UIKit

class Refeicao: NSObject {
    let nome: String
    let felicidade: Int
    let itens: Array<Item> = []

    init(nome: String, felicidade: Int) {
        self.nome = nome
        self.felicidade = felicidade
    }

    func totalDeCalorias() -> Double {
        var total = 0.0

        for item in itens {
            total += item.calorias
        }

        return total
    }
}
