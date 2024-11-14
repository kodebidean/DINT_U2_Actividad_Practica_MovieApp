//
//  DetalleViewController.swift
//  DINT_Actividad_Practica_U2
//
//  Created by user258285 on 11/14/24.
//

import UIKit

class DetalleViewController: UIViewController {

    @IBOutlet weak var descripcion: UILabel!
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var titulo: UILabel!
    
    var datosLista: Peliculas?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Datos que llegan desde el segue (configurado en ViewController)
        titulo.text = datosLista!.titulo
        descripcion.text = datosLista!.descripcion
        poster.image = UIImage (named: datosLista!.poster)
        
    }
    

}
