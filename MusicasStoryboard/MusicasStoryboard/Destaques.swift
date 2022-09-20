//
//  Destaques.swift
//  MusicasStoryboard
//
//  Created by Student on 19/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

class Destaques {
   
    let nomeArtista: String?
    let descricao: String?
    let descricaoDetalhada: String?
    let fotoArtista: String?

    
    init(nomeArtista: String, descricao: String, descricaoDetalhada: String, fotoArtista: String) {
        
        self.nomeArtista = nomeArtista
        self.descricao = descricao
        self.descricaoDetalhada = descricaoDetalhada
        self.fotoArtista = fotoArtista
        
    }
    
}

class DestaquesDAO {
    
    static func getList() -> Destaques {
    
        return
        
            Destaques(nomeArtista: "Post Malone", descricao: "Austin Richard Post, conhecido profissionalmente como Post Malone, é um artista, rapper, cantor, compositor, empresário, produtor musical e ator norte-americano. ", descricaoDetalhada: "Conhecido por suas tatuagens, composições introspectivas e estilo vocal lacônico, Malone ganhou aclamação por misturar uma variedade de gêneros, incluindo hip hop, R&B, pop, trap, rap rock e cloud rap. Ele obteve reconhecimento pela primeira vez em 2015, após o lançamento de seu single de estreia White Iverson. Subsequentemente, assinou um contrato com a Republic Records. O seu nome artístico é derivado do seu apelido e de um gerador de nomes de rap.", fotoArtista: "postmalone")

        
        
    }
    
}

