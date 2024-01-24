//
//  Student.swift
//  zad11
//
//  Created by admin on 1/17/24.
//

import Foundation
enum Oceny: Double
{
    case ndst = 2.0
    case dst = 3.0
    case dstplus = 3.5
    case db = 4.0
    case dbplus = 4.5
    case bdb = 5.0
}
enum kierunek: String
{
    case Informatyka = "Informatyka"
    case Matematyka = "Matematyka"
    case Filozofia = "Filozofia"
    case Elektrotechnika = "Elektrotechnika"
}
class Student:Osoba
{
    var nrIndeksu: Int = 5
    var kierunekStudiow:kierunek = kierunek.Filozofia
    var rokStudiow: Int = 3
    var oceny: [Oceny] = [Oceny.bdb,Oceny.db,Oceny.dbplus,Oceny.bdb,Oceny.dbplus]
    
    init(imie: String, nazwisko: String, rokUrodzenia: Int,nrIndeksu:Int,kierunekStudiow:kierunek,rokStudiow:Int,oceny:[Oceny]) {
        super.init(imie: imie, nazwisko: nazwisko, rokUrodzenia: rokUrodzenia)
        self.nrIndeksu=nrIndeksu
        self.kierunekStudiow=kierunekStudiow
        self.rokStudiow=rokStudiow
        self.oceny=oceny
       
    }
    func srednia()->Double
    {
        return Double(oceny.map{$0.rawValue}.reduce(0,+))/Double(oceny.count)
    }
    override func wyswietl()
    {
        print("\n\n\n")
        super.wyswietl()
        print("Numer indeksu: \(nrIndeksu)")
        print("Kierunek studiow: \(kierunekStudiow)")
        print("Rok studiow: \(rokStudiow)")
        print("Oceny: ")
        for i in oceny.indices
        {
            print("\(oceny[i].rawValue)",terminator: ",")
            
        }
        print("\n")
        print("Srednia: \(srednia())")
    }
    
    
}
