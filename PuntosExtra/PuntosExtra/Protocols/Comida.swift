//
//  Comida.swift
//  PuntosExtra
//
//  Created by Alumno on 15/10/25.
//

import Foundation


protocol ComidaProtocol{
    var Nombre: String { get set }
    var poder: Double { get set }
    var energia:Double { get set }
    var sazon: Double { get set }
    var grasa : Double { get set }
    
    func atacar() -> Double
    func recibirAtaque(valorAtaque: Double)
    
    
}
