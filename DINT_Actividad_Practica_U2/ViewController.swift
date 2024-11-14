//
//  ViewController.swift
//  DINT_Actividad_Practica_U2
//
//  Created by user258285 on 11/14/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var tabla: UITableView!

    var peliculas = [Peliculas]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Declaramos las pelliculas con sus datos
        let pelicula1 = Peliculas(titulo: "Cadena perpetua", descripcion: "Dos hombres encarcelados establecen una fuerte amistad a lo largo de los años, encontrando consuelo y redención eventual a través de actos de decencia común.", poster: "cadena_perpetua")
        let pelicula2 = Peliculas(titulo: "El pianista", descripcion: "Narra la historia real de Władysław Szpilman, un pianista judío-polaco que lucha por sobrevivir durante la ocupación nazi en la Segunda Guerra Mundial, utilizando su talento y resiliencia en medio del horror.", poster: "el_pianista")
        let pelicula3 = Peliculas(titulo: "La lista de Schindler", descripcion: "En la Polonia ocupada por los alemanes durante la Segunda Guerra Mundial, Oskar Schindler se preocupa gradualmente por su fuerza laboral judía después de presenciar su persecución por parte de los nazis.", poster: "la_lista_de_schindler")
        let pelicula4 = Peliculas(titulo: "La milla verde", descripcion: "Las vidas de los guardias en el corredor de la muerte se ven afectadas por uno de sus reclusos: un hombre negro acusado de asesinato infantil y violación, pero que tiene un don misterioso.", poster: "la_milla_verde")
        let pelicula5 = Peliculas(titulo: "La vida es bella", descripcion: "Un padre judío-italiano que utiliza su imaginación y humor para proteger a su hijo de los horrores de un campo de concentración nazi, transformando la tragedia en un juego para mantener viva la esperanza.", poster: "la_vida_es_bella")
        let pelicula6 = Peliculas(titulo: "Matrix", descripcion: "Un hacker informático aprende de rebeldes misteriosos sobre la verdadera naturaleza de su realidad y su papel en la guerra contra sus controladores.", poster: "matrix")
        
        // Agregar las peliculas con sus datos a la lista "peliculas"
        peliculas.append(pelicula1)
        peliculas.append(pelicula2)
        peliculas.append(pelicula3)
        peliculas.append(pelicula4)
        peliculas.append(pelicula5)
        peliculas.append(pelicula6)
        
        // Asignamos delegate y datasource a nuestra tabla
        tabla.delegate = self
        tabla.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        peliculas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        let cellList = peliculas[indexPath.row]
        // Configurar el texto de la celda (titulo)
        cell.textLabel?.text = cellList.titulo
        return cell
        
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "enviar", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviar" {
            if let id = tabla.indexPathForSelectedRow {
                let fila = peliculas[id.row]
                let destino = segue.destination as? DetalleViewController
                destino?.datosLista = fila
            }
        }
    }


}

        









