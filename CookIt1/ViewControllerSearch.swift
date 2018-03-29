//
//  ViewControllerSearch.swift
//  CookIt1
//
//  Created by Valeria Rocha Sepulveda  on 28/03/18.
//  Copyright © 2018 Valeria Rocha Sepulveda . All rights reserved.
//

import UIKit

class ViewControllerSearch: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableViewCategorias: UITableView!
    let nivel = ["Baja", "Media", "Alta"]
    let categorias = ["Platos Fuertes", "Postres", "Bebidas"]
    
    
    var ing = ["Pollo", "Huevo", "Nueces", "Leche", "Papa", "Pepino", "Salmon","Sal"]
    var ingFilter = [String]()
    var ingSelect = [String]()
    var buscando : Bool!
    
    
    @IBOutlet weak var tableViewIngredientes: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.allowsMultipleSelection = true
        tableViewCategorias.allowsMultipleSelection = true
        tableViewIngredientes.allowsMultipleSelection = true

        searchBar.delegate = self
        searchBar.returnKeyType = UIReturnKeyType.done
        searchBar.placeholder = "Buscar Ingredientes"
    
        buscando = false
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.tableView{
            return nivel.count
        }
        if tableView == self.tableViewCategorias {
            return categorias.count
        }
        if tableView == self.tableViewIngredientes{
            if(buscando){
                return ingFilter.count
            } else {
                return ing.count
            }
        } /*else {
            return ingFilter.count
        }*/
        
        return 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        if tableView == self.tableView{
            cell.textLabel?.text = nivel[indexPath.row]
        }
        if tableView == self.tableViewCategorias{
            cell.textLabel?.text = categorias[indexPath.row]
        }
        if tableView == self.tableViewIngredientes{
            if(buscando){
                cell.textLabel?.text = ingFilter[indexPath.row]
            } else {
                cell.textLabel?.text = ing[indexPath.row]
            }
        } /*else {
            if(buscando){
                cell.textLabel?.text = ingFilter[indexPath.row]
            }
        }*/
        return cell
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text == "" || searchBar.text == nil {
            buscando = false
            view.endEditing(true)
            tableViewIngredientes.reloadData()
            //recorrer ing, si el ingrediente esta contenido por ingSelect, hacer un selectRow
            for i in 0 ..< ing.count{
                if ingSelect.contains(ing[i]){
                    let indice = IndexPath(row: i, section: 0)
                    tableViewIngredientes.selectRow(at: indice, animated: true, scrollPosition: .none)
                }
            }
        } else {
            buscando = true
            ingFilter = ing.filter({$0.lowercased().hasPrefix(searchText.lowercased())})
            tableViewIngredientes.reloadData()
            //recorrer ingFilter, si el ingrediente esta contenido por ingSelect, hacer un selectRow
            for i in 0 ..< ingFilter.count{
                if ingSelect.contains(ingFilter[i]){
                    let indice = IndexPath(row: i, section: 0)
                    tableViewIngredientes.selectRow(at: indice, animated: true, scrollPosition: .none)
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //update ingSelect
        if tableView == self.tableViewIngredientes{
            if buscando{
                ingSelect.append(ingFilter[indexPath.row])
            } else {
                ingSelect.append(ing[indexPath.row])
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        //update ingSelect
        if tableView == self.tableViewIngredientes{
            if buscando{
                //quitar el elemento al que le dio deselect
                let indice = ingSelect.index(of: ingFilter[indexPath.row])!
                ingSelect.remove(at: indice)
            } else {
                let indice = ingSelect.index(of: ing[indexPath.row])!
                ingSelect.remove(at: indice)
            }
        }
    }
    
    
    @IBAction func click(_ sender: UIButton) {
        
        if let indices = tableView.indexPathsForSelectedRows{
            for i in 0 ..< indices.count{
                print(nivel[indices[i].row])
            }
        }
        
        if let indices = tableViewCategorias.indexPathsForSelectedRows{
            for i in 0 ..< indices.count{
                print(categorias[indices[i].row])
            }
        }
        
        print("Ingredientes seleccionados")
        for i in 0 ..< ingSelect.count{
            print(ingSelect[i])
        }
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
