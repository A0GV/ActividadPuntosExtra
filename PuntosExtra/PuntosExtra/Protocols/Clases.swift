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
    var Nombre: String
    var poder: Double
    var energia: Double
    var sazon: Double
    var grasa: Double
    
    var buchones: Double
    var queso: Int
    var sabesdeQuienSoy: Int
    
    init(Nombre: String, poder: Double, energia: Double, sazon: Double, grasa: Double, buchones: Double, queso: Int, sabesdeQuienSoy: Int) {
        self.Nombre = Nombre
        self.poder = poder
        self.energia = energia
        self.sazon = sazon
        self.grasa = grasa
        self.buchones = buchones
        self.queso = queso
        self.sabesdeQuienSoy = sabesdeQuienSoy
    }
    
    func atacar() -> Double {
        // Tirada para activar el modo "¿Sabes de quién soy?"
        sabesdeQuienSoy = Int.random(in: 1...100)
  

        if sabesdeQuienSoy > 50 {
            let golpe = (poder * buchones) * 2
            print("\(Nombre) ataca en modo ‘¿Sabes de quién soy?!’")
            print("   ➜ Cálculo: poder \(poder) × buchones \(buchones) × 2 = +\(golpe) de daño.")
            print(" ¡Nigiri tornado con respaldo de los buchones!")
            return golpe
        } else {
            let golpe = poder / 2
            print("\(Nombre) ataca con corte preciso y frío control.")
            print("   ➜ Cálculo: poder \(poder) ÷ 2 = +\(golpe) de daño.")
            return golpe
        }
    }
    func recibirAtaque(valorAtaque: Double) {
        var recibido = valorAtaque

        if queso > 10 {
            recibido = max(0, recibido - 5.0)
            queso -= 5
            print(" Reduccion por queso: -5 de daño, queso restante: \(queso)")
        }
        energia -= recibido
        if energia < 0 { energia = 0 }
        print("Daño recibido: -\(recibido). Energía actual: \(energia)")
        
        let usaGrasa = Double.random(in: 0..<1) < 0.4
        if usaGrasa && grasa > 0 {
            // Cura hasta 5 o lo que alcance la grasa disponible
            let curacion = min(grasa, 5.0)
            energia += curacion
            grasa -= curacion
            print("Grasa Curativa': +\(curacion) de energía, -\(curacion) de grasa. Energía: \(energia), Grasa: \(grasa)")
        } else {
            energia -= recibido
            print("No usó grasa esta vez grasa Energía: \(energia), Grasa: \(grasa)")
            
        }
    }
}


