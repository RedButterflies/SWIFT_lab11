//
//  Prostopadloscian.swift
//  zad11
//
//  Created by admin on 1/17/24.
//

import Foundation
class Prostopadloscian:Prostokat
{
    var wysokosc:Double = 1.0
    init(bokA_len: Double, bokB_len: Double, wysokosc:Double) {
        super.init(bokA_len: bokA_len, bokB_len: bokB_len)
        self.wysokosc = wysokosc
    }
    func poleCalkowite()->Double
    {
        return 2*(bokA_len*bokB_len)+2*(bokA_len*wysokosc) + 2*(bokB_len*wysokosc)
    }
    func sumaKrawedzi()->Double
    {
        return 4*wysokosc+4*bokA_len+4*bokB_len
    }
    func objetosc()->Double
    {
        return bokA_len*bokB_len*wysokosc
    }
    override func wyswietl() {
        super.wyswietl()
        print("Wysokosc bryly: \(wysokosc)")
        print("Pole calkowite bryly: \(poleCalkowite())")
        print("Suma krawedzi bryly: \(sumaKrawedzi())")
        print("Objetosc bryly: \(objetosc())")
        
    }
}
