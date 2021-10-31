//
//  Filme.swift
//  Desafio Curriculum
//
//  Created by Luan Gomes on 29/10/21.
//

import UIKit

class Filme {
    
    var nome: String!
    var ano: String!
    var imagem: UIImage!
    
    init(nome: String, ano: String, imagem: UIImage){
        self.nome = nome
        self.ano = ano
        self.imagem = imagem
    }
}
