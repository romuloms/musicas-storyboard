//
//  MusicasTableViewCell.swift
//  MusicasStoryboard
//
//  Created by Student on 16/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class MusicasTableViewCell: UITableViewCell {

    @IBOutlet weak var nomeMusicaMusicasLabel: UILabel!
    
    @IBOutlet weak var nomeArtistaMusicasLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
