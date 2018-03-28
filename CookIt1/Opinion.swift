//
//  Opinion.swift
//  CookIt1
//
//  Created by Valeria Rocha Sepulveda  on 27/03/18.
//  Copyright © 2018 Valeria Rocha Sepulveda . All rights reserved.
//

import UIKit

class Opinion: NSObject {

    var ranking : Int
    var comentario : String
    
    init(ranking : Int, comentario : String){
        self.ranking = ranking
        self.comentario = comentario
    }
}
