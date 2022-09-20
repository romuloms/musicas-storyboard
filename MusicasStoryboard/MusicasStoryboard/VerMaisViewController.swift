//
//  VerMaisViewController.swift
//  MusicasStoryboard
//
//  Created by Student on 19/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class VerMaisViewController: UIViewController {
    
    var descricaoDetalhada: String?
    var verMaisArtista: String?
    var verMaisImagemArtista: String = ""
    
    @IBOutlet weak var verMaisArtistaLabel: UILabel!
    
    @IBOutlet weak var verMaisImagem: UIImageView!
    
    @IBOutlet weak var descricaoDetalhadaDestaqueLabel: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let arrayDestaques = DestaquesDAO.getList()
        
        verMaisArtistaLabel.text = verMaisArtista
        verMaisImagem.image = UIImage(named: verMaisImagemArtista)
        descricaoDetalhadaDestaqueLabel.text = descricaoDetalhada

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
