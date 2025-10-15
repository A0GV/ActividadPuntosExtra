//
//  Comida.swift
//  PuntosExtra
//
//  Created by Alumno on 15/10/25.
//

import Foundation


protocol ComidaProtocol{
    var Nombre: String { get set }
    var poder: Int { get set }
    var energia:Int { get set }
    
    func atacar() -> Int
    func recibirAtaque(valorAtaque: Int)
    
    
}
