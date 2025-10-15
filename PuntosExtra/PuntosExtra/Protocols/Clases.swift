//
//  Clases.swift
//  PuntosExtra
//
//  Created by Joel Tellez Hernández on 15/10/25.
//

import Foundation
class TacoLegendario: ComidaProtocol {
    var energia: Double = 100
    var Nombre: String = "Pepe el Taco Legendario"
    var poder : Double = 6.0
    var sazon: Double = 0.9
    var grasa: Double = 0.2
    var salado: Double = 0.4
    var cebollaperejil : Double = 0.8
    var shile: Double = 1.0
    
    init(energia: Double, Nombre: String, poder: Double, sazon: Double, grasa: Double, salado: Double, cebollaperejil: Double) {
        self.energia = energia
        self.Nombre = Nombre
        self.poder = poder
        self.sazon = sazon
        self.grasa = grasa
        self.salado = salado
        self.cebollaperejil = cebollaperejil
    }
    func atacar() -> Double {
        let golpe = (poder * 2) * (sazon * shile)
        print("El enemigo fue acribillado con las pistolas de jalapeños. Daño: \(golpe)")
        return Double(golpe)
    }
    func recibirAtaque(valorAtaque: Double) -> Double {
        let escudo = (energia * cebollaperejil)
        let recibedaño = atacar()
        let dañototal = recibedaño - escudo
        print("Sufriste un ligero daño en la tortilla. Daño total: \(dañototal)")
        return Double(recibedaño)
    }
    }


class HamburguesaSamurai: ComidaProtocol {
    var energia: Double = 75
    var Nombre: String = "Jose la Hamburguesa Samurai"
    var poder : Double = 12
    var sazon: Double = 0.4
    var grasa: Double = 0.8
    var salado: Double = 0.1
    
    
    init(energia: Double, Nombre: String, poder: Double, sazon: Double, grasa: Double, salado: Double) {
        self.energia = energia
        self.Nombre = Nombre
        self.poder = poder
        self.sazon = sazon
        self.grasa = grasa
        self.salado = salado
    }
    
    func atacar() -> Double {
        let golpe = poder * grasa * salado
        print("El enemigo fue zapeado con la espada de papas fritas. Daño: \(golpe)")
        return Double(golpe)
    }
    
    func recibirAtaque(valorAtaque: Double) -> Double {
        let recibedaño = poder * sazon
        print("Te golpearon muy duro uyyy. Daño: \(recibedaño)")
        return Double(recibedaño)
    }

    }
    

class SuchiCulichi: ComidaProtocol {
    
}

