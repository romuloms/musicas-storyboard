//
//  MusicasTableViewController.swift
//  MusicasStoryboard
//
//  Created by Student on 16/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class MusicasTableViewController: UITableViewController {

    
    var musicas = [Musicas]()
    var informacoes = MusicasDAO.getList()
    var myIndex = 0
    
    var destaques : Destaques?
    var destaquesInfo = DestaquesDAO.getList()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        musicas = MusicasDAO.getList()
        destaques = DestaquesDAO.getList()
        
    }
    
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return musicas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicasInfo", for: indexPath)

        if let musicasCell = cell as? MusicasTableViewCell {
            
            let musica = musicas[indexPath.row]
            
            musicasCell.nomeMusicaMusicasLabel.text = musica.nomeMusica
            musicasCell.nomeArtistaMusicasLabel.text = musica.nomeArtista
            
            return musicasCell
            
        }

        return cell
    }
    
/*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
*/

    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "segue" {
            
            if let novaView = segue.destination as? InfoViewController {
                
                let celulaSelecionada = tableView.indexPathForSelectedRow?.row
                let musicaDaCelula = musicas[celulaSelecionada!]
                
                novaView.nomeMusica = musicaDaCelula.nomeMusica
                novaView.fotoAlbum = musicaDaCelula.fotoAlbum!
                novaView.nomeAlbum = musicaDaCelula.nomeAlbum
                novaView.nomeArtista = musicaDaCelula.nomeArtista

                
            }
            
        }
        
        if segue.identifier == "verMais" {
            if let verMaisView = segue.destination as? VerMaisViewController {
                
                verMaisView.verMaisArtista = destaquesInfo.nomeArtista
                verMaisView.descricaoDetalhada = destaquesInfo.descricaoDetalhada
                verMaisView.verMaisImagemArtista = destaquesInfo.fotoArtista!

            }
        }
        
    }

}

