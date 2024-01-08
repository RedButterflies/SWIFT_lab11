//
//  Prostokat.swift
//  SWIFT_klasy_lab11
//
//  Created by admin on 1/7/24.
//

import Foundation

class Prostokat
{
    var bokA : Double = 3.0
    var bokB : Double = 4.0
    
    init(bokA:Double, bokB:Double)
    {
        self.bokA = bokA
        self.bokB = bokB
    }
    
    func getArea()->Double{
        let area = bokA*bokB
        return area
    }
    func getObwod()->Double{
        let obwod = bokA*2 + bokB*2
        return obwod
    }
    func wyswietl()
    {
        print("Dlugosc boku A: \(bokA)")
        print("Dlugosc boku B: \(bokB)")
        print(String(format:"Pole prostokata: %.2f",getArea()))
        print(String(format:"Obwod prostokata: %.2f",getObwod()))
    }
}
