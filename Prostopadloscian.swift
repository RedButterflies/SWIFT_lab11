//
//  Prostopadloscian.swift
//  SWIFT_klasy_lab11
//
//  Created by admin on 1/7/24.
//

import Foundation
class Prostopadloscian:Prostokat
{

    var wysokosc:Double = 10.0
    init(bokA: Double, bokB: Double, wysokosc:Double)
    {
        super.init(bokA: bokA, bokB: bokB)
        self.wysokosc = wysokosc
    }
    
    func poleBryly()->Double{
        let pole = 2*(bokA*bokB) + 2*(wysokosc*bokA) + 2*(wysokosc*bokB)
        return pole
    }
    func sumaKrawedzi()->Double{
        let sumaK = 4*bokA + 4*bokB + 4*wysokosc
        return sumaK
    }
    
    func objetoscBryly()->Double{
        let objetosc = bokA*bokB*wysokosc
        return objetosc
    }
    override func wyswietl() {
        super.wyswietl()
        print("Wysokosc: \(wysokosc)")
        print("Calkowite pole powierzchni: \(poleBryly())")
        print("Suma krawedzi \(sumaKrawedzi())")
        print("Objetosc: \(objetoscBryly())")
    }
}
