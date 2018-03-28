//
//  TableViewControllerCategorias.swift
//  CookIt1
//
//  Created by Valeria Rocha Sepulveda  on 27/03/18.
//  Copyright © 2018 Valeria Rocha Sepulveda . All rights reserved.
//

import UIKit

class TableViewControllerCategorias: UITableViewController {
    
    var categorias = [String]()
    var listaRecetas : ListaRecetas!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.title = "Categorias"
        
        var ingredientes = [Ingrediente]()
        var opiniones = [Opinion]()
        var recetas = [Receta]()
        
        
        var info = InfoNutrimental(calorias: 200, gluten: false)
        var ingrediente = Ingrediente(nombre: "Pollo", cantidad: 60, unidad: "Gramos", sugerencia: "Señor pollo")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Espinaca", cantidad: 80, unidad: "Gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        var opinion = Opinion(ranking: 5, comentario: "Excelente receta")
        opiniones.append(opinion)
        var receta = Receta(nombre: "Pollo con Espinaca", dificultad: "Media", duracion: 60, categoria: "Platos Fuertes", ingredientes: ingredientes, opiniones: opiniones, precio: 100, nutricion: info, url: "https://www.youtube.com/watch?v=jNalUWQrW7E", imagen: #imageLiteral(resourceName: "pollo"), rank: -1)
        recetas.append(receta)
        
        
        info = InfoNutrimental(calorias: 150, gluten: false)
        ingrediente = Ingrediente(nombre: "Platano", cantidad: 2, unidad: "Unidades", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Leche", cantidad: 1, unidad: "Litro", sugerencia: "Lala")
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 9, comentario: "Delicioso")
        opiniones.append(opinion)
        receta = Receta(nombre: "Malteada de Platano", dificultad: "Baja", duracion: 10, categoria: "Bebidas", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "https://www.youtube.com/watch?v=jNalUWQrW7E", imagen: #imageLiteral(resourceName: "malteada"), rank: -1)
        recetas.append(receta)
        
        info = InfoNutrimental(calorias: 150, gluten: false)
        ingrediente = Ingrediente(nombre: "Nuez", cantidad: 100, unidad: "Gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Huevo", cantidad: 2, unidad: "Unidades", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 9, comentario: "Yum!")
        opiniones.append(opinion)
        receta = Receta(nombre: "Brownies", dificultad: "Baja", duracion: 50, categoria: "Postres", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "https://www.youtube.com/watch?v=jNalUWQrW7E", imagen: #imageLiteral(resourceName: "brownies"), rank: -1)
        recetas.append(receta)
        
        info = InfoNutrimental(calorias: 150, gluten: false)
        ingrediente = Ingrediente(nombre: "Pato", cantidad: 100, unidad: "Gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Naranja", cantidad: 2, unidad: "Unidades", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 9, comentario: "Sabroso")
        opiniones.append(opinion)
        receta = Receta(nombre: "Pato a la Naranja", dificultad: "Alta", duracion: 50, categoria: "Platos Fuertes", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "https://www.youtube.com/watch?v=jNalUWQrW7E", imagen: #imageLiteral(resourceName: "patoNaranja"), rank: -1)
        recetas.append(receta)
        
        listaRecetas = ListaRecetas(recetas: recetas)
        categorias = listaRecetas.getCategorias()
        
        for i in 0 ... (categorias.count - 1){
            print(categorias[i])
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return categorias.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
       cell.textLabel?.text = categorias[indexPath.row]
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vista = segue.destination as! TableViewControllerRecetas
        let index = tableView.indexPathForSelectedRow!
        let rec = listaRecetas.getRecetas(forCategoria: categorias[index.row])
        vista.category = categorias[index.row]
        vista.recetas = rec
    }
    

}
