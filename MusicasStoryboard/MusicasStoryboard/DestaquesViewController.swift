//
//  DestaquesViewController.swift
//  MusicasStoryboard
//
//  Created by Student on 16/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class DestaquesViewController: UIViewController {

    var destaque: String?
    var artistaDestaque: String?
    var fotoDestaque: String = ""
    
    
    @IBOutlet weak var destaqueLabel: UILabel!
    
    @IBOutlet weak var fotoDestaqueUIImageView: UIImageView!
    
    @IBOutlet weak var artistaDestaqueLabel: UILabel!
    
    
    @IBOutlet weak var descricaoDestaqueLabel: UITextView!
    
    var arrayDestaques : Destaques?

    var tableViewController: MusicasTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
          arrayDestaques = DestaquesDAO.getList()
        
        artistaDestaqueLabel.text = arrayDestaques!.nomeArtista
        fotoDestaqueUIImageView.image = UIImage(named: "postmalone")
        descricaoDestaqueLabel.text = arrayDestaques!.descricao
        
       
        
        // Do any additional setup after loading the view.
    }
    

   // In a storyboard-based application, you will often want to do a little preparation before navigation
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           // Get the new view controller using segue.destination.
           // Pass the selected object to the new view controller.
           
           if segue.identifier == "verMais" {
               if let verMaisView = segue.destination as? VerMaisViewController {
                   
                   verMaisView.verMaisArtista = arrayDestaques!.nomeArtista
                   verMaisView.descricaoDetalhada = arrayDestaques!.descricaoDetalhada
                   verMaisView.verMaisImagemArtista = arrayDestaques!.fotoArtista!

               }
           }
           
       }

}
