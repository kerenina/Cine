//
//  InfoViewController.swift
//  error
//
//  Created by Karen  on 10/8/19.
//  Copyright © 2019 Karen . All rights reserved.
//

import UIKit

class InfoViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{
   
//imagen y titulo
    
    @IBOutlet weak var imagen: UIImageView!
    
    @IBOutlet weak var titulo: UILabel!
    
    var image = UIImage ()
    var name = ""
    
    
    
/*Codigo para mandar los valores al mover el slider de no. de entradas y precio*/
    @IBOutlet weak var eti: UILabel!
    
    @IBOutlet weak var precio: UILabel!
    
    @IBAction func slider(_ sender: UISlider) {
        eti.text = "\nNo. Entradas: \(String(Int(sender.value))) \n"
        print(eti.text!)
        precio.text = "Precio: $ \(String( Int(sender.value)*65))"
        print(precio.text!)
    }

     /*codigo para el picker*/
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var Aceptar: UIButton!
    
    
    @IBAction func aceptado(_ sender: UIButton) {
        
//        performSegue(withIdentifier: "final", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextView = segue.destination as? FinalViewController
        nextView?.info = titulo.text! + eti.text! + precio.text!
        
        }
    
    
    var datos = [["6:00","7:00","8:00","9:00","10:00"],["am","pm"]]//arreglo bidimensional
    var horas: String = ""
    var turno: String = ""
    

        override func viewDidLoad() {
        super.viewDidLoad()
        //imagen y titulo
        view.backgroundColor = UIColor(red: 1, green: 0.556, blue: 0.232, alpha: 1)
        imagen.image = image
        titulo.text! = name
        
        
        //le voy avisar que lo voy a usar para el picker
        picker.dataSource = self //proporciona clase
        picker.delegate = self //yo mando en mis movimientos xd
        horas = datos[0][0]
        turno = datos[1][1]
    }
    
    
    /*codigo del picker*/
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return datos.count //hace dianmico lo de las columnas
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return datos[component].count //para que sea dinamico lo de los renglones
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int/*en tal posicion*/, forComponent component: Int)->String? /*me vas a regresar una cadena en cada componente*/ {
        return datos[component][row] //me regresa lo de mi componente segun su posicion
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
            horas = datos[0][row]
        }else{
            turno = datos[1][row]
        }
        
        print("La entrada selecionada es a las \(horas) durante el turno \(turno)")
    }
    
}

