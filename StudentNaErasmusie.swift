//
//  StudentNaErasmusie.swift
//  zad11
//
//  Created by admin on 1/18/24.
//

import Foundation
class StudentNaErasmusie:Student
{
    var nazwaUczelniZaGranica:String = ""
    var dataRozpoczeciaErasmusa:String = ""
    var dataZakonczeniaErasmusa:String = ""
    var kursy:[String:Oceny] = ["Angielski":Oceny.bdb]
    init(imie: String, nazwisko: String, rokUrodzenia: Int, nrIndeksu: Int, kierunekStudiow: kierunek, rokStudiow: Int, oceny: [Oceny], nazwaUczelniZaGranica:String, dataRozpoczeciaErasmusa:String, dataZakonczeniaErasmusa:String,kursy:[String:Oceny]) {
        super.init(imie: imie, nazwisko: nazwisko, rokUrodzenia: rokUrodzenia, nrIndeksu: nrIndeksu, kierunekStudiow: kierunekStudiow, rokStudiow: rokStudiow, oceny: oceny)
        self.nazwaUczelniZaGranica = nazwaUczelniZaGranica
        self.dataRozpoczeciaErasmusa = dataRozpoczeciaErasmusa
        self.dataZakonczeniaErasmusa = dataZakonczeniaErasmusa
        self.kursy = kursy
        
    }
    func dniNaErasmusie()->Int
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        guard let startDate = dateFormatter.date(from: dataRozpoczeciaErasmusa),let endDate = dateFormatter.date(from: dataZakonczeniaErasmusa)
                else
                {
                    fatalError("Nieprawidlowe daty")
                }
        let spedzonyCzasNaErasmusie = endDate.timeIntervalSince(startDate)
        let liczbaDni = Int(ceil((spedzonyCzasNaErasmusie/(60*60*24))))
        return liczbaDni
    }
    func ocenaZKursow()->String
    {
        let srednia = Double( kursy.map{$0.value}.map{$0.rawValue}.reduce(0,+))/Double(kursy.count)
        switch(srednia)
        {
        case let x where x >= 4.6:
            return "bardzo dobra"
        case let x where x >= 3.6:
            return "dobra"
        case let x where x >= 3.0:
            return "dostateczna"
        default:
            return "niedostateczna"
        }
    }
    


    override func wyswietl() {
        print("\n------------------")
        super.wyswietl()
        print("Nazwa uczelni za granica: \(nazwaUczelniZaGranica)")
        print("Data rozpoczecia Erasmusa: \(dataRozpoczeciaErasmusa)")
        print("Data zakonczenia Erasmusa: \(dataZakonczeniaErasmusa)")
        print("Kursy")
        for i in kursy.indices
        {
            print("\n------\n")
            print("""
                Nazwa kursu: \(kursy[i].key)
                Ocena z kursu: \(kursy[i].value)
                """)
        }
        print("Dni spedzone na Erasmusie: \(dniNaErasmusie())")
        print("Ocena studenta ze wszystkich kursow: \(ocenaZKursow())")
    }
}
   


