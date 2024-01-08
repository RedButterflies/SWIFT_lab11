//
//  StudentNaErasmusie.swift
//  SWIFT_klasy_lab11
//
//  Created by admin on 1/8/24.
//

import Foundation
class StudentNaErasmusie:Student
{
    var nazwaUczelniZaGranica: String = ""
    var dataRozpoczecia: String = "2003-12-01"
    var dataZakonczenia: String = "2005-07-15"
    var kursy: [String:ocena] = ["English":ocena.bdb]
    
    init(imie:String, nazwisko:String, rok_urodzenia:Int, numerIndeksu:Int, kierunekStudiow:kierunek,rokStudiow:Int,oceny:[ocena],nazwaUczelniZaGranica: String, dataRozpoczecia : String,dataZakonczenia:String,    kursy: [String:ocena])
    {
        super.init(imie: imie, nazwisko: nazwisko, rok_urodzenia: rok_urodzenia, numerIndeksu: numerIndeksu, kierunekStudiow: kierunekStudiow, rokStudiow: rokStudiow, oceny: oceny)
        self.nazwaUczelniZaGranica = nazwaUczelniZaGranica
        self.dataRozpoczecia = dataRozpoczecia
        self.dataZakonczenia = dataZakonczenia
        self.kursy = kursy
    }
    
    func liczbaDniNaErasmusie() -> Int
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        guard let startDate = dateFormatter.date(from:dataRozpoczecia),
        let endDate = dateFormatter.date(from: dataZakonczenia)
        else {
            fatalError("Nieprawidlowe daty")
            
        }
        
        let spedzonyCzasNaErasmusie = endDate.timeIntervalSince(startDate)
        let liczbaDni = Int(ceil((spedzonyCzasNaErasmusie / (60*60*24))))
        //print("Liczba dni spedzonych na Erasmusie:  \(liczbaDni)")
        return liczbaDni
    }
    
    func ocenaStudenta() -> String
    {
        let oceny = kursy.map{$0.value.rawValue}
        let suma = oceny.reduce(0.0,+)
        let srednia = suma/Double(kursy.count)
        print("Srednia studenta: \(srednia)")
        switch(srednia)
        {
        case let x where x > 4.6:
            //print("Ocena bardzo dobra")
            return "bardzo dobra"
        case let x where x > 3.6:
            //print("Ocena dobra")
            return "dobra"
        case let x where x > 3.0:
            //print("Ocena dostateczna")
            return "dostateczna"
        default:
            //print("Ocena niedostateczna")
            return "niedostateczna"
        }
        
        
    }
    override func wyswietl() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let startDate = dateFormatter.date(from:dataRozpoczecia)
        let endDate = dateFormatter.date(from: dataZakonczenia)
        
        
        super.wyswietl()
        print("Nazwa uczelni za granica: \(nazwaUczelniZaGranica)")
        print("Data rozpoczecia Erasmusa: \(startDate!)")
        print("Data zakonczenia Erasmusa: \(endDate!)")
        print("Kursy studenta: ")
        for i in kursy{
            print("Nazwa: \(i.key) Ocena: \(i.value)")
        }
        print("\nLiczba dni na Erasmusie: \(liczbaDniNaErasmusie())")
        print("\nOcena studenta: \(ocenaStudenta())")
    }
    
}

