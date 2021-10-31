//
//  ViewController.swift
//  Desafio Curriculum
//
//  Created by Luan Gomes on 29/10/21.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        
        filme = Filme (nome: "Viúva Negra", ano: "Lançamento em: 8 de julho de 2021 ", imagem: UIImage(named: "viuvaNegra")!)
        filmes.append(filme)
        
        filme = Filme (nome: "Capitã Marvel", ano: "Lançamento em: 7 de março de 2019", imagem: UIImage(named: "CaptaMarvel")!)
        filmes.append(filme)
        
        filme = Filme (nome: "Homem de Ferro", ano: "Lançamento em: 30 de abril de 2010", imagem: UIImage(named: "IronMan2")!)
        filmes.append(filme)
        
        filme = Filme (nome: "Os Vingadores", ano: "Lançamento em: 27 de abril de 2012", imagem: UIImage(named: "osVingadores")!)
        filmes.append(filme)
        
        filme = Filme (nome: "Vingadores - Ultimato", ano: "Lançamento em: 25 de abril de 2019", imagem: UIImage(named: "vingadoresUltimato")!)
        filmes.append(filme)
        
        filme = Filme (nome: "Vingadores - Era de Ultron", ano: "Lançamento em: 23 de abril de 2015", imagem: UIImage(named: "vingadoresEraDeUltron")!)
        filmes.append(filme)
        
        filme = Filme (nome: "Vingadores - Guerra Infinita", ano: "Lançamento em: 26 de abril de 2018", imagem: UIImage(named: "vingadoresGuerraInfinita")!)
        filmes.append(filme)
        
        filme = Filme (nome: "Capitão América    Guerra Civil", ano: "Lançamento em: 28 de abril de 2016 ", imagem: UIImage(named: "capitaoAmericaGuerraCivil")!)
        filmes.append(filme)
        
        filme = Filme (nome: "Capitão América Soldado Invernal", ano: "Lançamento em: 10 de abril de 2014", imagem: UIImage(named: "capitaoAmericaSoldadoInvernal")!)
        filmes.append(filme)
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let filme = filmes[indexPath.row]
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula
        celula.imagemView?.image = filme.imagem
        celula.nomeCell.text = filme.nome
        celula.anoCell.text = filme.ano
      
        //celula.imagemView?.layer.cornerRadius = 70
        //celula.imagemView?.clipsToBounds = true
        
        // celula.textLabel?.text = filme.nome
       // celula.imageView?.image = filme.imagem
    
        return celula
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueFilme" {
            if let linhaSelecionada = tableView.indexPathForSelectedRow{
                let filmeSelecionado = self.filmes[linhaSelecionada.row]
                let DetalhesViewController = segue.destination as! DetalhesViewController
                DetalhesViewController.filme = filmeSelecionado
            }
        }
        
    }
    

}

