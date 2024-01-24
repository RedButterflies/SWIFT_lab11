//
//  Prostokat.swift
//  zad11
//
//  Created by admin on 1/17/24.
//

import Foundation
class Prostokat
{
    var bokA_len: Double
    var bokB_len: Double
    init(bokA_len:Double,bokB_len:Double) {
        self.bokA_len = bokA_len
        self.bokB_len = bokB_len
    }
    func pole()->Double
    {
        return bokA_len * bokB_len
    }
    func obwod()->Double
    {
        return 2*(bokA_len+bokB_len)
    }
    func wyswietl()
    {
        print("Dlugosc boku A: \(bokA_len)")
        print("Dlugosc boku B: \(bokB_len)")
        print("Obwod: \(obwod())")
        print("Pole: \(pole())")
    }
}
