//
//  VCtrllerDetalleReceta.swift
//  CookIt1
//
//  Created by Valeria Rocha Sepulveda  on 28/03/18.
//  Copyright © 2018 Valeria Rocha Sepulveda . All rights reserved.
//

import UIKit
import WebKit

class VCtrllerDetalleReceta: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var web: WKWebView!
    var receta : Receta!
    
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbDuracion: UILabel!
    @IBOutlet weak var lbRank: UILabel!
    @IBOutlet weak var lbPrecio: UILabel!
    
    @IBOutlet weak var tvIngredientes: UITextView!
    @IBOutlet weak var tvInstrucciones: UITextView!
    @IBOutlet weak var lbCalorias: UILabel!
    @IBOutlet weak var lbGluten: UILabel!
    @IBOutlet weak var tvComentarios: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let video = "https://www.youtube.com/embed/\(receta.url)"
        let myURL = URL(string: video)
        let myRequest = URLRequest(url: myURL!)
        web.load(myRequest)
        
        lbNombre.text = receta.nombre
        lbDuracion.text = String(receta.duracion)
        receta.updateRank()
        lbRank.text = String(receta.rank)
        lbPrecio.text = String(receta.precio)
        tvInstrucciones.text = receta.instrucciones
        lbCalorias.text = "Calorias: " + String(receta.nutricion.calorias)
        if receta.nutricion.gluten{
            lbGluten.text = "Contiene gluten"
        } else {
            lbGluten.text = "Sin gluten"
        }
        
        var ing = ""
        for i in 0 ..< receta.ingredientes.count{
            ing += String(receta.ingredientes[i].cantidad) + " " + receta.ingredientes[i].unidad + " de " + receta.ingredientes[i].nombre + "\n"
        }
        tvIngredientes.text = ing
        
        var comentarios = ""
        for i in 0 ..< receta.opiniones.count{
            comentarios += "Rank: \(receta.opiniones[i].ranking)\n"
            comentarios += receta.opiniones[i].comentario + "\n\n"
        }
        tvComentarios.text = comentarios
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
