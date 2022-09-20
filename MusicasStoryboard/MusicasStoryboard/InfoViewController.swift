//
//  InfoViewController.swift
//  MusicasStoryboard
//
//  Created by Student on 16/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController{

    var nomeMusica: String?
    var nomeArtista: String?
    var fotoAlbum: String = ""
    var nomeAlbum: String?
    
    @IBOutlet weak var fotoAlbumInfoUIImageView: UIImageView!
    
    @IBOutlet weak var nomeMusicaInfoLabel: UILabel!
    
    @IBOutlet weak var artistaInfoLabel: UILabel!
    
    @IBOutlet weak var albumInfoLabel: UILabel!
    
    var tableViewController: MusicasTableViewController?
    
    var arrayMusicas = MusicasDAO.getList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nomeMusicaInfoLabel.text = nomeMusica
        fotoAlbumInfoUIImageView.image = UIImage(named: fotoAlbum)
        artistaInfoLabel.text = nomeArtista
        albumInfoLabel.text = nomeAlbum

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
