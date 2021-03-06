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
        
        
        var info = InfoNutrimental(calorias: 200, gluten: false, lactosa: true, vegetariana: false, vegana: false, fuenteFibra: true, highCarbs: false, lowCarbs: false, highProtein: true, forDiabetics: true)
        var ingrediente = Ingrediente(nombre: "Pollo", cantidad: 60, unidad: "Gramos", sugerencia: "Señor pollo")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Espinaca", cantidad: 80, unidad: "Gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        var opinion = Opinion(ranking: 5, comentario: "Excelente receta")
        opiniones.append(opinion)
        var receta = Receta(nombre: "Pollo con Espinaca", dificultad: "Media", duracion: 60, categoria: "Platos Fuertes", ingredientes: ingredientes, opiniones: opiniones, precio: 100, nutricion: info, url: "jNalUWQrW7E&t=1s", imagen: #imageLiteral(resourceName: "pollo"), rank: 5, instrucciones: "1. Descongelar el pollo\n2. Cortar Espinaca\n", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
        recetas.append(receta)
        
        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 150, gluten: false, lactosa: true, vegetariana: false, vegana: false, fuenteFibra: true, highCarbs: false, lowCarbs: false, highProtein: true, forDiabetics: true)
        ingrediente = Ingrediente(nombre: "Platano", cantidad: 2, unidad: "Unidades", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Leche", cantidad: 1, unidad: "Litro", sugerencia: "Lala")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Azucar mascabada", cantidad: 2, unidad: "Cucharadas" , sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 9, comentario: "Delicioso")
        opiniones.append(opinion)
        receta = Receta(nombre: "Malteada de Platano", dificultad: "Baja", duracion: 10, categoria: "Bebidas", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "WE8HqGtPUIo", imagen: #imageLiteral(resourceName: "malteada"), rank: 9, instrucciones: "1.En la licuadora agregamos el plátano, el extracto de vainilla, el chocolate en polvo y por último la leche.\n2. Licuamos hasta ver todo incorporado y listo!", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
        recetas.append(receta)
        
        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 466, gluten: true, lactosa: true, vegetariana: false, vegana: false, fuenteFibra: false, highCarbs: false, lowCarbs: false, highProtein: false, forDiabetics: false)
        ingrediente = Ingrediente(nombre: "Nuez", cantidad: 100, unidad: "Gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Huevo", cantidad: 3, unidad: "piezas", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Leche", cantidad: 0.5, unidad: "Litros", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 9, comentario: "Que ricos brownies!")
        opiniones.append(opinion)
        receta = Receta(nombre: "Brownies", dificultad: "Baja", duracion: 50, categoria: "Postres", ingredientes: ingredientes, opiniones: opiniones, precio: 30, nutricion: info, url: "lIb_741_dIw", imagen: #imageLiteral(resourceName: "brownies"), rank: 9, instrucciones: "1.Vertir agua y aceite en un contenedor\n2. Añadir los huevos\n3.Revolver mezcla durante 1 min\n", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
        recetas.append(receta)
        
        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 466, gluten: false, lactosa: false, vegetariana: true, vegana: true, fuenteFibra: true, highCarbs: false, lowCarbs: false, highProtein: false, forDiabetics: true)
        ingrediente = Ingrediente(nombre: "Platano", cantidad: 3, unidad: "unidades", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Levadura en polvo", cantidad: 0.5, unidad: "cucharaditas", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Chocolate negro vegano", cantidad: 50, unidad: "gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Avellanas", cantidad: 2, unidad: "cucharadas soperas", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 9, comentario: "Que ricos brownies!")
        opiniones.append(opinion)
        receta = Receta(nombre: "Brownies Veganos", dificultad: "Baja", duracion: 45, categoria: "Postres", ingredientes: ingredientes, opiniones: opiniones, precio: 30, nutricion: info, url: "lIb_741_dIw", imagen: #imageLiteral(resourceName: "browniesVegan"), rank: 9, instrucciones: "1.Precalienta el horno a 180 ºC y prepara una bandeja de horno forrada con papel de horno y engrasada con un poco de aceite.\n2. Trocea las avellanas, los anacardos y el chocolate y añádelos a la masa de brownies veganos sin harina.\n3.Revolver mezcla durante 1 min\n", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
        recetas.append(receta)
        
        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 150, gluten: false, lactosa: true, vegetariana: false, vegana: false, fuenteFibra: true, highCarbs: false, lowCarbs: false, highProtein: true, forDiabetics: true)
        ingrediente = Ingrediente(nombre: "Pato", cantidad: 100, unidad: "Gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Naranja", cantidad: 2, unidad: "piezas", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Sal", cantidad: 1 , unidad: "pizca", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 10, comentario: "Sabroso")
        opiniones.append(opinion)
        receta = Receta(nombre: "Pato a la Naranja", dificultad: "Alta", duracion: 50, categoria: "Platos Fuertes", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "boSY78CrMCY", imagen: #imageLiteral(resourceName: "patoNaranja"), rank: 10, instrucciones: "1.Descongelar pato\n2. Partir naranjas\n3.Cocer el pato\n", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
        recetas.append(receta)
        
        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 547, gluten: false, lactosa: true, vegetariana: false, vegana: false, fuenteFibra: true, highCarbs: false, lowCarbs: false, highProtein: false, forDiabetics: false)
        ingrediente = Ingrediente(nombre: "Cebolla", cantidad: 25, unidad: "gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Ajo", cantidad: 0.5, unidad: "dientes", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Sal", cantidad: 1 , unidad: "pizca" , sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Pasta", cantidad: 100, unidad: "gramos", sugerencia: "La Moderna")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Carne Molida", cantidad: 50, unidad: "gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Salsa de Tomate", cantidad: 1, unidad: "taza", sugerencia: "Del Monte")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Queso Parmesano", cantidad: 1 , unidad: "pizca", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Albahaca Seca", cantidad: 0.5, unidad: "cucharada", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 5, comentario: "Delicioso platillo para todos los miembros de la familia")
        opiniones.append(opinion)
        receta = Receta(nombre: "Espaguetti a la Boloñesa", dificultad: "Alta", duracion: 30, categoria: "Platos Fuertes", ingredientes: ingredientes, opiniones: opiniones, precio: 30, nutricion: info, url: "syMvcAsa2zY", imagen: #imageLiteral(resourceName: "espaguetti"), rank: 5, instrucciones: "1.Picar finamente el ajo y la cebolla.\n2.Acitronar la cebolla y el ajo en un poco de aceite de oliva un par de minutos hasta que se torne un poco transparente. \n3.Agregar la albahaca y cocer un minuto hasta que suerte su aroma. \n4.Añadir la carne molida, desbaratar bien con una pala y continuar cociendo hasta que ya no se vea rosa. \n5.Agregar el puré, sazonar con sal y cocer a lumbre bajita 15 minutos. \n6.Poner agua a hervir en una olla grande honda. \n7.Agregar sal y dejar que recupere el hervor. \n8.Agregar la pasta y cocer de 7 a 11 minutos o hasta que esté al dente (suave por fuera y firme por dentro). \n9.Escurrir. \n10.Colocar la pasta en dos platos. \n11.Cubrir cada uno con la salsa. \n12.Espolvorear con queso parmesano. \n13.Servir inmediatamente.", nacionalidad: "Italiana", ingMatch: 0)
        recetas.append(receta)
        
        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 315, gluten: false, lactosa: false, vegetariana: false, vegana: false, fuenteFibra: true, highCarbs: false, lowCarbs: true, highProtein: false, forDiabetics: true)
        ingrediente = Ingrediente(nombre: "Cebolla", cantidad: 25, unidad: "gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Ajo", cantidad: 0.5, unidad: "dientes", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Sal", cantidad: 1 , unidad: "pizca", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Paprika", cantidad: 0.125, unidad: "cucharadas", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Carne Molida", cantidad: 150, unidad: "gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Tomillo", cantidad: 0.25, unidad: "cucharadas", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Oregano", cantidad: 0.25, unidad: "cucharadas", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Aceite de Oliva", cantidad: 0.25, unidad: "cucharada", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Jitomate", cantidad: 0.75, unidad: "pieza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Chayote", cantidad: 0.25, unidad: "pieza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Coles de Bruselas", cantidad: 2.5, unidad: "piezas", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 8, comentario: "Buena opción para diabeticos!")
        opiniones.append(opinion)
        receta = Receta(nombre: "Guisado de coles de bruselas con carne", dificultad: "Baja", duracion: 20, categoria: "Platos Fuertes", ingredientes: ingredientes, opiniones: opiniones, precio: 30, nutricion: info, url: "grJoKYgtvZ4", imagen: #imageLiteral(resourceName: "guisado"), rank: 8, instrucciones: "1. Cortar las coles bruselas en dos partes y el chayote en trozos pequeños. \n2.Picar finamente el diente de ajo,  cebolla y jitomate guaje. \n3.Reservar. \n4.Poner a hervir las coles bruselas en una olla honda con suficiente agua y un poquito de sal durante 5 minutos. \n5.Escurrir. \n6.Calentar la cucharada de aceite en un sartén y cuando esté caliente, sofreír el ajo picado y la cebolla picada durante un par de minutos. \n7.Añadir la carne molida y continuar cociendo unos minutos más hasta que la carne cambie de color. Agregar el chayote y jitomate  picado, sazonar con orégano, tomillo, paprika y sal al gusto. \n8.Continuar cociendo tapado a fuego bajo durante 10 minutos. \n9.Añadir las coles de Bruselas y rectificar sazón. \n10.Servir caliente.", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
        recetas.append(receta)


        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 569, gluten: false, lactosa: false, vegetariana: true, vegana: false, fuenteFibra: true, highCarbs: false, lowCarbs: true, highProtein: false, forDiabetics: true)
        ingrediente = Ingrediente(nombre: "Cebolla", cantidad: 25, unidad: "gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Tortilla de harina", cantidad: 4, unidad: "piezas", sugerencia: "Tia Rosa")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Elote", cantidad: 1, unidad: "pieza" , sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Cilantro", cantidad: 0.25, unidad: "manojo", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Queso Oaxaca", cantidad: 200, unidad: "gramos", sugerencia: "Lala")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Pimiento Morrón Verde", cantidad: 1, unidad: "pieza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Jitomate", cantidad: 0.75, unidad: "pieza", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 4, comentario: "Fácil y rápido de hacer")
        opiniones.append(opinion)
        receta = Receta(nombre: "Quesadillas de Vegetales", dificultad: "Baja", duracion: 20, categoria: "Desayuno", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "HwSU1mccnRA", imagen: #imageLiteral(resourceName: "quesadillasVegetales"), rank: 4, instrucciones: "1. Desgranar el elote  y reservar. Picar el pimiento morrón, la cebolla, el jitomate guaje y el cilantro. 2.Sofreír en el sartén con aceite el pimiento morrón picado junto con el elote desgranado y la cebolla picada durante 5 minutos. 3.Agregar el tomate picado y continuar cociendo 5 minutos más meneando con frecuencia. 4.Agregar el cilantro picado, sazonar con sal y reservar. 5.Cortar el queso en rebanaditas delgadas. 6.Colocar una rebanada de queso sobre cada tortilla, agregar las verduras y doblar a la mitad en forma de quesadilla. 7.Ponerlas en el comal a fuego lento  y dejar que se derrita el queso y la tortilla quede crujiente  y ligeramente dorada. 8.Servir calientes.", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
            recetas.append(receta)
        
        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 432, gluten: false, lactosa: false, vegetariana: true, vegana: true, fuenteFibra: true, highCarbs: false, lowCarbs: true, highProtein: false, forDiabetics: true)
        ingrediente = Ingrediente(nombre: "Espinacas", cantidad: 150, unidad: "gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Tofu", cantidad: 100, unidad: "gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Tomate cherry", cantidad: 10, unidad: "piezas" , sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Aceite Sesamo", cantidad: 1, unidad: "cucharada", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Miel", cantidad: 1, unidad: "cucharada", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 5, comentario: "Rico.")
        opiniones.append(opinion)
        receta = Receta(nombre: "Ensalada de espinacas", dificultad: "Baja", duracion: 10, categoria: "Ensaladas", ingredientes: ingredientes, opiniones: opiniones, precio: 30, nutricion: info, url: "i9VevEI_ruo", imagen: #imageLiteral(resourceName: "ensaladaTofu"), rank: 4, instrucciones: "1. Desgranar el elote  y reservar. Picar el pimiento morrón, la cebolla, el jitomate guaje y el cilantro. 2.Sofreír en el sartén con aceite el pimiento morrón picado junto con el elote desgranado y la cebolla picada durante 5 minutos. 3.Agregar el tomate picado y continuar cociendo 5 minutos más meneando con frecuencia. 4.Agregar el cilantro picado, sazonar con sal y reservar. 5.Cortar el queso en rebanaditas delgadas. 6.Colocar una rebanada de queso sobre cada tortilla, agregar las verduras y doblar a la mitad en forma de quesadilla. 7.Ponerlas en el comal a fuego lento  y dejar que se derrita el queso y la tortilla quede crujiente  y ligeramente dorada. 8.Servir calientes.", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
        recetas.append(receta)
        
        //De aqui en adelante falta modificar imagenes
        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 450, gluten: false, lactosa: false, vegetariana: true, vegana: false, fuenteFibra: false, highCarbs: true, lowCarbs: false, highProtein: false, forDiabetics: false)
        ingrediente = Ingrediente(nombre: "Galleta Maria molida", cantidad: 2, unidad: "Tazas", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Mantequilla sin sal", cantidad: 1/4, unidad: "Cucharada", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Canela en polvo", cantidad: 3, unidad: "Cucharada", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Arroz blanco", cantidad: 1, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Leche entera", cantidad: 2, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Leche evaporada", cantidad: 1.5, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Leche condensada", cantidad: 1/2, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Rajas de canela", cantidad: 3, unidad: "Unidades", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Vainilla", cantidad: 1.5, unidad: "Cucharada", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Azucar morena", cantidad: 1/2, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Gretina natural hidratada", cantidad: 1, unidad: "Cucharada", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 5, comentario: "Quedan sabrosisimos!")
        opiniones.append(opinion)
        receta = Receta(nombre: "Tarta de arroz", dificultad: "Media", duracion: 160, categoria: "Postres", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "muYuIi6137w&list=PLq7GH806GgigWiCX91XkxX5TUGzS2bnck&index=2", imagen: #imageLiteral(resourceName: "tartaArroz"), rank: 5, instrucciones: "1-Añade a un bowl la galleta con la mantequilla, mezcla hasta obtener una masita consistente y se apelmace. Agrega a un molde y aplana para formar una base uniforme. Presiona la base con una cuchara perfectamente bien. Refrigera el molde durante una hora para que la mantequilla endurezca. Reserva. 2-Calienta una olla con el arroz blanco, la leche entera, leche evaporada, leche condensada, la canela, la escencia de vainilla y el azúcar. Cocina durante 40 minutos o hasta que el arroz este suave. Retira la preparación. 3-Agrega la preparación a la licuadora con la grenetina hidratada, licua perfectamente bien. Reserva. Retira la base de refrigeración y agrega la mezcla de la licuador. 4-Refrigera durante 2 horas o hasta que la tarta cuaje.", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
        recetas.append(receta)
        
        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 353, gluten: false, lactosa: true, vegetariana: true, vegana: false, fuenteFibra: false, highCarbs: false, lowCarbs: false, highProtein: false, forDiabetics: false)
        ingrediente = Ingrediente(nombre: "Leche chocolate", cantidad: 1, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Nesquik polvo", cantidad: 2, unidad: "Cucharada", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Leche entera", cantidad: 3, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Amaranto", cantidad: 1/2, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Frambuesa", cantidad: 1, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Azucar mascabada", cantidad: 2, unidad: "Cucharadas" , sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Fresa", cantidad: 1/2, unidad:"Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Rodajas de platano", cantidad: 1, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Miel", cantidad: 1/4, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Cereal nesquik", cantidad: 1/4, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 9, comentario: "La mejor malteada")
        opiniones.append(opinion)
        receta = Receta(nombre: "Malteada de Choco-Fresa", dificultad: "Baja", duracion: 10, categoria: "Bebidas", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "U6wJ81Fp8u8&index=12&list=PLq7GH806GgigWiCX91XkxX5TUGzS2bnck", imagen: #imageLiteral(resourceName: "malteadaChoc"), rank: 9, instrucciones: "1-Para los hielos de chocolate, en un recipiente, mezcla una taza de leche con dos cucharadas de Nesquik® sabor a Chocolate. Sirve la preparación en un recipiente para hielos y congela. 2-Aparte, en otro recipiente, mezcla la leche con el amaranto. Sirve la preparación en un recipiente para hielos y congela. 3-En otro recipiente de hielos coloca plátano, fresa y frambuesa, rellena con leche y congela. 4-Coloca en la licuadora los hielos que preparaste y licúa para formar tu malteada. 5-Escarcha tu vaso con miel y amaranto, sirve la preparación de la malteada, decora con el cereal de bolitas de chocolate. Disfruta.", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
        recetas.append(receta)
        
        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 396, gluten: false, lactosa: false, vegetariana: true, vegana: false, fuenteFibra: false, highCarbs: false, lowCarbs: true, highProtein: false, forDiabetics: false)
        ingrediente = Ingrediente(nombre: "Mantequilla", cantidad: 1/2, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Galletas Maria", cantidad: 2, unidad: "Paquete 170 gr", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Azucar mascabada", cantidad: 2, unidad: "Cucharadas" , sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Fresa", cantidad: 3, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Queso crema", cantidad: 2, unidad: "Paquetes 200 gr", sugerencia: "lala")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Jugo de limon", cantidad: 2, unidad: "Cucharadas", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Grenetina", cantidad: 3, unidad: "Sobres 7 gr", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Crema para batir", cantidad: 2, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 10, comentario: "El mejor cheesecake!!")
        opiniones.append(opinion)
        receta = Receta(nombre: "Cheesecake de fresa sin horno", dificultad: "Alta", duracion: 20, categoria: "Postres", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "t8QxH0mOhtA&index=73&list=PLq7GH806GgigWiCX91XkxX5TUGzS2bnck", imagen: #imageLiteral(resourceName: "cheesecakeFresa"), rank: 10, instrucciones: "1-Tritura las galletas en el procesador de alimentos hasta obtener un polvo fino. Mezcla con la mantequilla y el azúcar. 2-Vierte la mezcla de galletas en un molde para pastel de 18 cm y esparce con ayuda de una cuchara, para formar una costra. Refrigera por 15 minutos. 3-Licúa 1 ½ taza de fresas con el jugo de limón, el queso y el azúcar por 3 minutos o hasta obtener una mezcla homogénea. Agrega la grenetina hidratada y fundida en forma de hilo. Reserva. 4-Bate la crema hasta obtener picos suaves y mezcla de forma envolvente con la mezcla de queso. 5-Acomoda el resto de las mitades de fresas alrededor del molde. Vierte la mezcla de fresas y refrigera por 1 hora o hasta que cuaje. 6-Decora con rebanadas de fresas y crema chantilly.", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
            recetas.append(receta)
        
        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 74.2, gluten: false, lactosa: true, vegetariana: true, vegana: false, fuenteFibra: false, highCarbs: false, lowCarbs: false, highProtein: false, forDiabetics: false)
        ingrediente = Ingrediente(nombre: "Agua", cantidad: 2, unidad: "Litros", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Arroz", cantidad: 1, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Rajas de canela", cantidad: 4, unidad: "Unidades", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Leche evaporada", cantidad: 1, unidad: "Lata", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Azucar", cantidad: 0.6, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 6, comentario: "Riquisima!")
        opiniones.append(opinion)
        receta = Receta(nombre: "Agua de horchata", dificultad: "Baja", duracion: 10, categoria: "Bebidas", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "gZ41PL3nZ0E&t=1s", imagen: #imageLiteral(resourceName: "aguaHorchata"), rank: 6, instrucciones: "1-Remoja en agua hirviendo el arroz y espera a que enfrié. 2-En una cacerola hierve 2 tazas de agua con las 4 rajas de canela, déjala enfriar. 3-Licúa el arroz con todo y agua, el agua con canela y un pedazo de ella. 4-Utiliza un colador de malla fina para pasar lo licuado a una jarra grande. Incorpora leche al gusto hasta lograr la consistencia deseada. 5-Agrega de 2 a 3 litros de agua más y revuelve con azúcar al gusto. Al final agrega hielos.", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
        recetas.append(receta)
        
        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 298, gluten: false, lactosa: true, vegetariana: false, vegana: false, fuenteFibra: false, highCarbs: false, lowCarbs: false, highProtein: true, forDiabetics: true)
        ingrediente = Ingrediente(nombre: "Cebolla", cantidad: 25, unidad: "gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Pimienta", cantidad: 0.125, unidad: "cucharada", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Aceite de Oliva", cantidad: 0.125, unidad: "taza" , sugerencia: "Ibarra")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Milanesa de Res", cantidad: 1, unidad: "pieza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Sal", cantidad: 0.25, unidad: "cucharada", sugerencia: "La Fina")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Pimiento Morrón Verde", cantidad: 1, unidad: "pieza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Pimiento Morrón Amarillo", cantidad: 1, unidad: "pieza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Pimiento Morrón Rojo", cantidad: 1, unidad: "pieza", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 10, comentario: "Un platillo jugoso y nutritivo. Ideal para una cena")
        opiniones.append(opinion)
        receta = Receta(nombre: "Fajitas de Res", dificultad: "Baja", duracion: 25, categoria: "Platos Fuertes", ingredientes: ingredientes, opiniones: opiniones, precio: 30, nutricion: info, url: "ivSPhtIJznk", imagen: #imageLiteral(resourceName: "fajitasRes") , rank: 10, instrucciones: "1.Cortar el pimiento morrón en tiras delgadas descartando la parte blanca. 2.Cortar la cebolla en  rodajas y reservar. 3.Cortar las milanesas de res en tiras delgadas. 4.Salpimentar las fajitas y reservar. 5.Calentar el sartén perdura durante 3 minutos. 6.Agregar el aceite de oliva. 7.Añadir las fajitas y sofreír durante 3 minutos o hasta que cambien de color. 8.Agregar la cebolla en rodajas y pimiento morrón y continuar cociendo hasta que estén suaves y rectificar sazón. 9.Servir acompañadas de frijoles refritos o guacamole.", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
            recetas.append(receta)
        
        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 200, gluten: true, lactosa: false, vegetariana: true, vegana: true, fuenteFibra: true, highCarbs: false, lowCarbs: true, highProtein: false, forDiabetics: true)
        ingrediente = Ingrediente(nombre: "Cebolla", cantidad: 25, unidad: "gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Pimienta", cantidad: 0.125, unidad: "cucharada", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Aceite de Oliva", cantidad: 0.125, unidad: "taza" , sugerencia: "Ibarra")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Arroz", cantidad: 1, unidad: "vaso pequeño", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Sal", cantidad: 0.25, unidad: "cucharada", sugerencia: "La Fina")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Tomate", cantidad: 1, unidad: "pieza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Ajo", cantidad: 2, unidad: "dientes", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Pimiento Morrón Rojo", cantidad: 1, unidad: "pieza", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 10, comentario: "El mejor platillo vegano que he probado en mi vida!")
        opiniones.append(opinion)
        opinion = Opinion(ranking: 9, comentario: "Wow!")
        opiniones.append(opinion)
        receta = Receta(nombre: "Arroz Picante", dificultad: "Media", duracion: 35, categoria: "Platos Fuertes", ingredientes: ingredientes, opiniones: opiniones, precio: 40, nutricion: info, url: "yQlVJAx5kBk", imagen: #imageLiteral(resourceName: "arrozPicante"), rank: 9.5, instrucciones: "1.Cortar el pimiento morrón en tiras delgadas descartando la parte blanca. 2.Cortar la cebolla en  rodajas y reservar. 3.Poner arroz en un plato. 4.Salpimentar las fajitas y reservar. 5.Calentar el sartén perdura durante 3 minutos. 6.Agregar el aceite de oliva. 7.Añadir las fajitas y sofreír durante 3 minutos o hasta que cambien de color. 8.Agregar la cebolla en rodajas y pimiento morrón y continuar cociendo hasta que estén suaves y rectificar sazón. 9.Servir acompañadas de frijoles refritos o guacamole.", nacionalidad: "Mexicana", ingMatch: 0)
        recetas.append(receta)

        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 120, gluten: false, lactosa: true, vegetariana: false, vegana: false, fuenteFibra: false, highCarbs: false, lowCarbs: false, highProtein: true, forDiabetics: true)
        ingrediente = Ingrediente(nombre: "Pimienta", cantidad: 0.125, unidad: "cucharada", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Mostaza", cantidad: 0.125, unidad: "taza" , sugerencia: "Heinz")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Pescado", cantidad: 2, unidad: "filetes", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Sal", cantidad: 1, unidad: "pizca", sugerencia: "La Fina")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Estragón", cantidad: 0.5, unidad: "cucharadas", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 9, comentario: "Me gusto!")
        opiniones.append(opinion)
        receta = Receta(nombre: "Filetes de Pescado al Estragón", dificultad: "Alta", duracion: 20, categoria: "Platos Fuertes", ingredientes: ingredientes, opiniones: opiniones, precio: 25, nutricion: info, url: "fXqlRl4X6x0", imagen:  #imageLiteral(resourceName: "pescadoEstragon"), rank: 9, instrucciones: "1. Salpimentar los filetes de pescado. 2.Untar con mostaza. 3.Espolvorear con estragón. 4.Cocer en un sartén con un poco de aceite de oliva sobre la estufa, tapados a lumbre bajita durante 4 minutos de cada lado (También se pueden colocar en una fuente para horno, cubrir con papel aluminio y hornear a 350°F (150°C) durante 20 minutos). 5.Servir acompañados de arroz blanco o alguna ensalada de lechugas.", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
            recetas.append(receta)
        
        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 80, gluten: false, lactosa: false, vegetariana: true, vegana: false, fuenteFibra: false, highCarbs: false, lowCarbs: false, highProtein: true, forDiabetics: true)
        ingrediente = Ingrediente(nombre: "Cebolla", cantidad: 25, unidad: "gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Aceite de Oliva", cantidad: 0.5, unidad: "cucharadas" , sugerencia: "Ibarra")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Huevos", cantidad: 3, unidad: "pieza", sugerencia: "San Juan")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Sal", cantidad: 0.25, unidad: "cucharada", sugerencia: "La Fina")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Queso Panela", cantidad: 33.5, unidad: "gramos", sugerencia: "Lala")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Champiniones", cantidad: 4, unidad: "pieza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Ajo", cantidad: 0.5, unidad: "dientes", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 9, comentario: "Buena elección para desayuno.")
        opiniones.append(opinion)
        receta = Receta(nombre: "Omelette de Champiñones", dificultad: "Media", duracion: 20, categoria: "Desayuno", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "LS6pPXKjzvY", imagen: #imageLiteral(resourceName: "omeletteChamp"), rank: 9, instrucciones: "1. Picar el queso en cubos pequeños. 2.Picar finamente el ajo y la cebolla. 3.Batir un poco las claras de huevo San Juan dentro de un tazón con un poco de sal y pimienta. 4.Calentar un sartén con la cucharada de aceite, el ajo y la cebolla picados, cocer hasta que se torne transparente la cebolla. 5.Agregar los champiñones y el queso. 6.Cocer meneando con frecuencia durante aproximadamente 3 minutos. 7.Agregar las claras batidas al sartén con los champiñones, revolver, bajar un poco el fuego y dejar cocer por un lado hasta que el huevo de dore un poco. 8.Voltear sobre sí mismo y continuar cociendo hasta que esté listo.", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
            recetas.append(receta)
        
        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 170, gluten: true, lactosa: true, vegetariana: false, vegana: false, fuenteFibra: false, highCarbs: false, lowCarbs: false, highProtein: true, forDiabetics: true)
        ingrediente = Ingrediente(nombre: "Cebolla", cantidad: 25, unidad: "gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Zanahoria", cantidad: 2, unidad: "piezas", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Aceite de Oliva", cantidad: 1, unidad: "cucharada", sugerencia: "Ibarra")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Pierna de Pollo", cantidad: 2, unidad: "pieza", sugerencia: "Bachoco")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Sal", cantidad: 0.25, unidad: "cucharada", sugerencia: "La Fina")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Mostaza", cantidad: 0.125, unidad: "taza", sugerencia: "Heinz")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Papa Blanca", cantidad: 0.5, unidad: "pieza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Chayote", cantidad: 0.5, unidad: "pieza", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 8, comentario: "Buena opción si tienes tiempo")
        opiniones.append(opinion)
        receta = Receta(nombre: "Pollo a la Cacerola", dificultad: "Baja", duracion: 60, categoria: "Platos Fuertes", ingredientes: ingredientes, opiniones: opiniones, precio: 30, nutricion: info, url: "pYmp1qqQwbI", imagen: #imageLiteral(resourceName: "polloCacerola"), rank: 8, instrucciones: "1. Poner a pre cocer el pollo con el trozo de cebolla y sal en una olla con agua durante 20 minutos. 2.Pelar las papa, la zanahoria y el chayote y cortar en cubos medianos. 3.Escurrir el pollo y poner a dorar junto con las verduras en sartén abierto a fuego alto durante 3 minutos. 4.Agregar la mostaza y un poco del caldo del pollo. 5.Bajar a lumbre y cocer tapado 20 minutos más. 6.Servir acompañado de arroz blanco y frijoles de la olla.", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
            recetas.append(receta)
        
        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 168, gluten: false, lactosa: true, vegetariana: false, vegana: false, fuenteFibra: true, highCarbs: false, lowCarbs: true, highProtein: true, forDiabetics: true)
        ingrediente = Ingrediente(nombre: "Cebolla", cantidad: 25, unidad: "gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Ajo", cantidad: 0.5, unidad: "dientes", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Sal", cantidad: 1, unidad: "pizca" , sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Comino", cantidad: 0.25, unidad: "cucharadas", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Carne Molida", cantidad: 150, unidad: "gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Chile Serrano", cantidad: 0.5, unidad: "pieza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Zanahoria", cantidad: 0.5, unidad: "pieza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Aceite de Oliva", cantidad: 0.25, unidad: "cucharada", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Calabacita", cantidad: 0.5, unidad: "pieza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Papa Blanca", cantidad: 0.5, unidad: "pieza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Jitomate", cantidad: 1, unidad: "piezas", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 10, comentario: "Delicioso. Me recuerda al que preparaba mi mama")
        opiniones.append(opinion)
        receta = Receta(nombre: "Picadillo", dificultad: "Baja", duracion: 20, categoria: "Platos Fuertes", ingredientes: ingredientes, opiniones: opiniones, precio: 30, nutricion: info, url: "V2TfnNRzruw", imagen: #imageLiteral(resourceName: "picadillo"), rank: 10, instrucciones: "1. Picar la papa, la zanahoria, la cebolla y el chile. 2.Moler el jitomate en la licuadora con un poco de agua y el diente de ajo. 3.Acitronar la cebolla en aceite de oliva a que quede transparente pero no dorada, agregar el chile serrano (opcional), mover hasta acitronar unos segundos. 4.Agregar la carne molida (o mixta res y puerco) y la pimienta, continuar moviendo hasta cocer, procurar que no quede muy dorada. 5.Agregar el jitomate y continuar cociendo a que cambie un poco de color. 6.Añadir sal al gusto e incorporar la papa y la zanahoria. 7.Cocer con la olla tapada a lumbre baja durante 15 minutos más o hasta cocer las papas y las zanahorias, añadir al final la calabacita y esperar cinco minutos más. 8.Servir como plato fuerte acompañado de arroz. También se puede servir en taquitos o tostadas o como botana con totopos.", nacionalidad: "Mexicana", ingMatch: 0)
        recetas.append(receta)

        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 383, gluten: true, lactosa: false, vegetariana: false, vegana: false, fuenteFibra: true, highCarbs: false, lowCarbs: true, highProtein: false, forDiabetics: true)
        ingrediente = Ingrediente(nombre: "Pimienta", cantidad: 0.5, unidad: "pizca", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Aceite de Oliva", cantidad: 2, unidad: "cucharadas", sugerencia: "Ibarra")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Espinaca", cantidad: 0.5, unidad: "manojo" , sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Champiñones", cantidad: 2, unidad: "piezas", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Vinagre Balsamico", cantidad: 0.5, unidad: "cucharadas", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Tocino", cantidad: 50, unidad: "gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Queso Parmesano", cantidad: 50, unidad: "gramos", sugerencia: "Lala")
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 7, comentario: "Ideal para acompañar")
        opiniones.append(opinion)
        receta = Receta(nombre: "Ensalada de Espinacas y Parmesano", dificultad: "Baja", duracion: 20, categoria: "Ensaladas", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "mL654Mcza7E", imagen:  #imageLiteral(resourceName: "ensaladaEspinaca"), rank: 7, instrucciones: "1. Desinfectar las espinacas, cortar la panceta en trozos pequeños y freír en un sartén, retirar el exceso de grasa con una servilleta de papel y reservar. 2.Preparar un aderezo colocando en un tazón el aceite de oliva, el vinagre balsámico, la sal de mar y la pimienta negra. Batir utilizando un batidor de globo hasta obtener una mezcla homogénea. 3.Cortar los champiñones en rebanadas y colocarlos en un platón junto con las espinacas desinfectadas y secas, se puede ayudar de una toalla para quitar el exceso de agua.  4.Espolvorear los trozos de panceta o tocino junto con el queso parmesano y bañar con el aderezo.", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
            recetas.append(receta)

        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 237, gluten: true, lactosa: false, vegetariana: true, vegana: false, fuenteFibra: false, highCarbs: false, lowCarbs: true, highProtein: false, forDiabetics: false)
        ingrediente = Ingrediente(nombre: "Sal", cantidad: 1, unidad: "al gusto" , sugerencia: "La Fina")
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Romero", cantidad: 0.5, unidad: "ramas", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Mantequilla", cantidad: 22.5, unidad: "gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Papa Blanca", cantidad: 1.5, unidad: "pieza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Leche", cantidad: 0.5, unidad: "tazas", sugerencia: "Lala")
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 10, comentario: "Delicioso!")
            opiniones.append(opinion)
        receta = Receta(nombre: "Pure de Papa con Romero", dificultad: "Baja", duracion: 60, categoria: "Guarniciones", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "cUNyvkcKY-w", imagen: #imageLiteral(resourceName: "purePapa"), rank: 10, instrucciones: "1. Pelar las papas y cortar en trozos medianos. 2.Poner a cocer las papas en agua hirviendo durante 45 minutos o hasta que estén bien cocidas. 3.Dejar enfriar y escurrir. 4.Picar las hojas del romero fresco, derretir la mantequilla en una olla y añadir el romero picado, dejar 30 segundos, añadir las papas cocidas y machacarlas con un machacador de papa. 5.Agregar la leche y calentar. 6.Mezclar bien con la cuchara hasta incorporar. 7.Sazonar con sal y pimienta y continuar cociendo hasta obtener la consistencia adecuada.", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
            recetas.append(receta)


        
        
        //listaRecetas = ListaRecetas(recetas: recetas)
        ListaRecetas.baseRecetas.recetas = recetas
       // categorias = listaRecetas.getCategorias()
        
        categorias = ListaRecetas.baseRecetas.getCategorias()
        
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
        //let rec = listaRecetas.getRecetas(forCategoria: categorias[index.row])
        var rec = ListaRecetas.baseRecetas.getRecetas(forCategoria: categorias[index.row])
        vista.category = categorias[index.row]
        rec.sort(by: {$0.rank > $1.rank})
        vista.recetas = rec
        vista.mostrarMatch = false
    }
    

}
