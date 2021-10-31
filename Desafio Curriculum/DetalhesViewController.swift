//
//  DetalhesViewController.swift
//  Desafio Curriculum
//
//  Created by Luan Gomes on 29/10/21.
//

import UIKit

class DetalhesViewController: UIViewController {

    @IBOutlet weak var imageViewController: UIImageView!
    @IBOutlet weak var nomeViewController: UILabel!
    @IBOutlet weak var anoViewController: UILabel!
    
    var filme: Filme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViewController.image = filme.imagem
        nomeViewController.text = filme.nome
        anoViewController.text = filme.ano
        
    }
    
    
}


