//
//  TableViewCellReceta.swift
//  CookIt1
//
//  Created by Valeria Rocha Sepulveda  on 27/03/18.
//  Copyright © 2018 Valeria Rocha Sepulveda . All rights reserved.
//

import UIKit

class TableViewCellReceta: UITableViewCell {
    
    
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbDificultad: UILabel!
    @IBOutlet weak var lbCalorias: UILabel!
    @IBOutlet weak var lbDuracion: UILabel!
    @IBOutlet weak var lbRank: UILabel!
    @IBOutlet weak var lbMatch: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
