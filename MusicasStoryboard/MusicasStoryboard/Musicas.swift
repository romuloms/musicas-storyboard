//
//  Musicas.swift
//  MusicasStoryboard
//
//  Created by Student on 16/09/22.
//  Copyright © 2022 Student. All rights reserved.
//


import Foundation

class Musicas {
   
    let nomeMusica: String?
    let nomeArtista: String?
    let fotoAlbum: String?
    let nomeAlbum: String?
    
    init(nomeMusica: String, nomeArtista: String, fotoAlbum: String, nomeAlbum: String) {
        
        self.nomeMusica = nomeMusica
        self.nomeArtista = nomeArtista
        self.fotoAlbum = fotoAlbum
        self.nomeAlbum = nomeAlbum
        
    }
    
}


class MusicasDAO {
    
    static func getList() -> [Musicas] {
    
        return [
        
            Musicas(nomeMusica: "Leave the door open", nomeArtista: "Bruno Mars, Anderson .Paak", fotoAlbum: "bruno-silk-sonic-album", nomeAlbum: "Silk Sonic"),
            Musicas(nomeMusica: "Samba in Paris", nomeArtista: "Baco Exu do Blues", fotoAlbum: "baco-album", nomeAlbum: "QVVJFA"),
            Musicas(nomeMusica: "Take ten", nomeArtista: "Black Alien", fotoAlbum: "black-alien-album", nomeAlbum: "Abaixo de zero: Hello Hell"),
            Musicas(nomeMusica: "Gramercy Park", nomeArtista: "Alicia", fotoAlbum: "alicia-album", nomeAlbum: "Alicia"),
            Musicas(nomeMusica: "Dengo", nomeArtista: "João Gomes", fotoAlbum: "joao-gomes-album", nomeAlbum: "Digo ou não digo"),

        ]
        
    }
    
}

