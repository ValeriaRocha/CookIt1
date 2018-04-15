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
        opinion = Opinion(ranking: 9, comentario: "Delicioso")
        opiniones.append(opinion)
        receta = Receta(nombre: "Malteada de Platano", dificultad: "Baja", duracion: 10, categoria: "Bebidas", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "WE8HqGtPUIo", imagen: #imageLiteral(resourceName: "malteada"), rank: 9, instrucciones: "1.En la licuadora agregamos el plátano, el extracto de vainilla, el chocolate en polvo y por último la leche.\n2. Licuamos hasta ver todo incorporado y listo!", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
        recetas.append(receta)
        
        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 466, gluten: true, lactosa: true, vegetariana: false, vegana: false, fuenteFibra: false, highCarbs: false, lowCarbs: false, highProtein: false, forDiabetics: false)
        ingrediente = Ingrediente(nombre: "Nuez", cantidad: 100, unidad: "Gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Huevo", cantidad: 3, unidad: "Unidades", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Leche", cantidad: 0.5, unidad: "Litros", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 9, comentario: "Que ricos brownies!")
        opiniones.append(opinion)
        receta = Receta(nombre: "Brownies", dificultad: "Baja", duracion: 50, categoria: "Postres", ingredientes: ingredientes, opiniones: opiniones, precio: 30, nutricion: info, url: "lIb_741_dIw", imagen: #imageLiteral(resourceName: "brownies"), rank: 9, instrucciones: "1.Vertir agua y aceite en un contenedor\n2. Añadir los huevos\n3.Revolver mezcla durante 1 min\n", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
        recetas.append(receta)
        
        ingredientes.removeAll()
        opiniones.removeAll()
        info = InfoNutrimental(calorias: 150, gluten: false, lactosa: true, vegetariana: false, vegana: false, fuenteFibra: true, highCarbs: false, lowCarbs: false, highProtein: true, forDiabetics: true)
        ingrediente = Ingrediente(nombre: "Pato", cantidad: 100, unidad: "Gramos", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Naranja", cantidad: 2, unidad: "Unidades", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 10, comentario: "Sabroso")
        opiniones.append(opinion)
        receta = Receta(nombre: "Pato a la Naranja", dificultad: "Alta", duracion: 50, categoria: "Platos Fuertes", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "boSY78CrMCY", imagen: #imageLiteral(resourceName: "patoNaranja"), rank: 10, instrucciones: "1.Vertir agua y aceite en un contenedor\n2. Añadir los huevos\n3.Revolver mezcla durante 1 min\n", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
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
        receta = Receta(nombre: "Espaguetti a la Boloñesa", dificultad: "Baja", duracion: 30, categoria: "Platos Fuertes", ingredientes: ingredientes, opiniones: opiniones, precio: 30, nutricion: info, url: "syMvcAsa2zY", imagen: #imageLiteral(resourceName: "espaguetti"), rank: 5, instrucciones: "1.Picar finamente el ajo y la cebolla.\n2.Acitronar la cebolla y el ajo en un poco de aceite de oliva un par de minutos hasta que se torne un poco transparente. \n3.Agregar la albahaca y cocer un minuto hasta que suerte su aroma. \n4.Añadir la carne molida, desbaratar bien con una pala y continuar cociendo hasta que ya no se vea rosa. \n5.Agregar el puré, sazonar con sal y cocer a lumbre bajita 15 minutos. \n6.Poner agua a hervir en una olla grande honda. \n7.Agregar sal y dejar que recupere el hervor. \n8.Agregar la pasta y cocer de 7 a 11 minutos o hasta que esté al dente (suave por fuera y firme por dentro). \n9.Escurrir. \n10.Colocar la pasta en dos platos. \n11.Cubrir cada uno con la salsa. \n12.Espolvorear con queso parmesano. \n13.Servir inmediatamente.", nacionalidad: "Italiana", ingMatch: 0)
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
        opinion = Opinion(ranking: 10, comentario: "Quedan sabrosisimos!")
        opiniones.append(opinion)
        receta = Receta(nombre: "Tarta de arroz", dificultad: "Media", duracion: 160, categoria: "Postres", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "muYuIi6137w&list=PLq7GH806GgigWiCX91XkxX5TUGzS2bnck&index=2", imagen: #imageLiteral(resourceName: "tartaArroz"), rank: 10, instrucciones: "1-Añade a un bowl la galleta con la mantequilla, mezcla hasta obtener una masita consistente y se apelmace. Agrega a un molde y aplana para formar una base uniforme. Presiona la base con una cuchara perfectamente bien. Refrigera el molde durante una hora para que la mantequilla endurezca. Reserva. 2-Calienta una olla con el arroz blanco, la leche entera, leche evaporada, leche condensada, la canela, la escencia de vainilla y el azúcar. Cocina durante 40 minutos o hasta que el arroz este suave. Retira la preparación. 3-Agrega la preparación a la licuadora con la grenetina hidratada, licua perfectamente bien. Reserva. Retira la base de refrigeración y agrega la mezcla de la licuador. 4-Refrigera durante 2 horas o hasta que la tarta cuaje.", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
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
        ingrediente = Ingrediente(nombre: "Fresa", cantidad: 1/2, unidad:"Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Rodajas de platano", cantidad: 1, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Miel", cantidad: 1/4, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        ingrediente = Ingrediente(nombre: "Cereal nesquik", cantidad: 1/4, unidad: "Taza", sugerencia: nil)
        ingredientes.append(ingrediente)
        opinion = Opinion(ranking: 10, comentario: "La mejor malteada")
        opiniones.append(opinion)
        receta = Receta(nombre: "Malteada de chocolate", dificultad: "Baja", duracion: 10, categoria: "Bebidas", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "U6wJ81Fp8u8&index=12&list=PLq7GH806GgigWiCX91XkxX5TUGzS2bnck", imagen: #imageLiteral(resourceName: "malteadaChoc"), rank: 9, instrucciones: "1-Para los hielos de chocolate, en un recipiente, mezcla una taza de leche con dos cucharadas de Nesquik® sabor a Chocolate. Sirve la preparación en un recipiente para hielos y congela. 2-Aparte, en otro recipiente, mezcla la leche con el amaranto. Sirve la preparación en un recipiente para hielos y congela. 3-En otro recipiente de hielos coloca plátano, fresa y frambuesa, rellena con leche y congela. 4-Coloca en la licuadora los hielos que preparaste y licúa para formar tu malteada. 5-Escarcha tu vaso con miel y amaranto, sirve la preparación de la malteada, decora con el cereal de bolitas de chocolate. Disfruta.", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
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
        ingrediente = Ingrediente(nombre: "Fresas", cantidad: 3, unidad: "Taza", sugerencia: nil)
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
        receta = Receta(nombre: "Cheesecake de fresa sin horno", dificultad: "Alta", duracion: 20, categoria: "Postres", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "t8QxH0mOhtA&index=73&list=PLq7GH806GgigWiCX91XkxX5TUGzS2bnck", imagen: #imageLiteral(resourceName: "cheesecakeFresa"), rank: 4, instrucciones: "1-Tritura las galletas en el procesador de alimentos hasta obtener un polvo fino. Mezcla con la mantequilla y el azúcar. 2-Vierte la mezcla de galletas en un molde para pastel de 18 cm y esparce con ayuda de una cuchara, para formar una costra. Refrigera por 15 minutos. 3-Licúa 1 ½ taza de fresas con el jugo de limón, el queso y el azúcar por 3 minutos o hasta obtener una mezcla homogénea. Agrega la grenetina hidratada y fundida en forma de hilo. Reserva. 4-Bate la crema hasta obtener picos suaves y mezcla de forma envolvente con la mezcla de queso. 5-Acomoda el resto de las mitades de fresas alrededor del molde. Vierte la mezcla de fresas y refrigera por 1 hora o hasta que cuaje. 6-Decora con rebanadas de fresas y crema chantilly.", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
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
        opinion = Opinion(ranking: 10, comentario: "Riquisima!")
        opiniones.append(opinion)
        receta = Receta(nombre: "Agua de horchata", dificultad: "Baja", duracion: 10, categoria: "Bebidas", ingredientes: ingredientes, opiniones: opiniones, precio: 20, nutricion: info, url: "gZ41PL3nZ0E&t=1s", imagen: #imageLiteral(resourceName: "tartaArroz"), rank: 8, instrucciones: "1-Remoja en agua hirviendo el arroz y espera a que enfrié. 2-En una cacerola hierve 2 tazas de agua con las 4 rajas de canela, déjala enfriar. 3-Licúa el arroz con todo y agua, el agua con canela y un pedazo de ella. 4-Utiliza un colador de malla fina para pasar lo licuado a una jarra grande. Incorpora leche al gusto hasta lograr la consistencia deseada. 5-Agrega de 2 a 3 litros de agua más y revuelve con azúcar al gusto. Al final agrega hielos.", nacionalidad: "Multi-Nacionalidad", ingMatch: 0)
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
