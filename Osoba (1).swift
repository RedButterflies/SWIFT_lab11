//
//  Osoba.swift
//  zad11
//
//  Created by admin on 1/17/24.
//

import Foundation
class Osoba
{
    var imie: String
    var nazwisko: String
    var rokUrodzenia: Int
    init(imie:String, nazwisko:String, rokUrodzenia: Int) {
        self.imie = imie
        self.nazwisko = nazwisko
        self.rokUrodzenia = rokUrodzenia
    }
    func wiekOsoby()->Int
    {
        return 2024-rokUrodzenia
    }
    func wyswietl()
    {
        print("Imie: \(imie)")
        print("Nazwisko: \(nazwisko)")
        print("Rok urodzenia: \(rokUrodzenia)")
        print("Wiek \(wiekOsoby())")
    }
}
