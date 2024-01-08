//
//  Student.swift
//  SWIFT_klasy_lab11
//
//  Created by admin on 1/7/24.
//

import Foundation
enum kierunek: String{
    case Informatyka = "Informatyka"
    case Matematyka = "Matematyka"
    case Filozofia = "Filozofia"
    case Elektrotechnika = "Elektrotechnika"
}
enum ocena: Double{
    case ndst = 2.0
    case dost = 3.0
    case dostplus = 3.5
    case db = 4.0
    case dbplus = 4.5
    case bdb = 5.0
}
class Student: Osoba
{
    var numerIndeksu:Int = 1
    var kierunekStudiow:kierunek = kierunek.Informatyka
    var rokStudiow: Int = 1
    var oceny: [ocena] = [ocena.bdb,ocena.bdb,ocena.bdb,ocena.bdb,ocena.bdb]
    init(imie:String, nazwisko:String, rok_urodzenia:Int, numerIndeksu:Int, kierunekStudiow:kierunek,rokStudiow:Int,oceny:[ocena])
    {
        super.init(imie: imie, nazwisko: nazwisko, rok_urodzenia: rok_urodzenia)
        self.numerIndeksu = numerIndeksu
        self.kierunekStudiow = kierunekStudiow
        self.rokStudiow = rokStudiow
        self.oceny = oceny
    
    }
    
    func srednia ()->Double
    {
        let tab = oceny.map{$0.rawValue}
        let suma = tab.reduce(0,+)
        let srednia = suma/5.0
        return srednia
    }
    
    override func wyswietl() {        super.wyswietl()
        print("Numer indeksu: \(numerIndeksu)")
        print("Kierunek studiow: \(kierunekStudiow)")
        print("Rok studiow: \(rokStudiow)")
        print("Oceny: ")
        for i in oceny.indices
        {
            print("Ocena \(i).: \(oceny[i].rawValue)")
        }
        print("Srednia: \(srednia())")
        
    }
    
    
}
