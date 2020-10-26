//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Marcos Jr on 26/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    
    @IBAction func adicionar(_ sender: Any) {
        // IF LET
        
//        if let nomeRefeicao = nomeTextField?.text, let felicidadeRefeicao = felicidadeTextField?.text {
//            let nome = nomeRefeicao
//            if let felicidade = Int(felicidadeRefeicao) {
//                let refeicao = Refeicao(nome: nome, felicidade: felicidade)
//
//                print("Comi \(refeicao.nome) e fiquei \(refeicao.felicidade)")
//            }
//        } else {
//            print("Erro ao tentar criar a refeição")
//        }
        
        // GUARD LET
        
        guard let nomeRefeicao = nomeTextField?.text else { return }
        guard let felicidadeRefeicao = felicidadeTextField?.text,
              let felicidade = Int(felicidadeRefeicao) else { return }
        
            let refeicao = Refeicao(nome: nomeRefeicao, felicidade: felicidade)

            print("Comi \(refeicao.nome) e fiquei \(refeicao.felicidade)")
    }
}

