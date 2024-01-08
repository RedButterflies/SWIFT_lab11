//
//  Osoba.swift
//  SWIFT_klasy_lab11
//
//  Created by admin on 1/7/24.
//

import Foundation

class Osoba
{
    var imie: String = ""
    var nazwisko: String = ""
    var rok_urodzenia: Int = 1999
    
    init(imie: String, nazwisko:String, rok_urodzenia:Int)
    {
        self.imie = imie
        self.nazwisko = nazwisko
        self.rok_urodzenia = rok_urodzenia
    }
    func wyswietl()
    {
        print("Imie: \(imie)")
        print("Nazwisko: \(nazwisko)")
        print("Rok urodzenia: \(rok_urodzenia)")
    }
}
