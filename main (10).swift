//
//  main.swift
//  SWIFT_klasy_lab11
//
//  Created by admin on 1/7/24.
//

import Foundation

var prostokatA = Prostokat(bokA:10,bokB:15.5)
prostokatA.wyswietl()
print("Funkcja obwod:\(prostokatA.getObwod())")
print("Funkcja pole: \(prostokatA.getArea())")

print("------------------\n")
var prostopadloscianA = Prostopadloscian(bokA:30,bokB:40,wysokosc: 10)
prostopadloscianA.wyswietl()
print("Funkcja pole calkowite: \(prostopadloscianA.poleBryly())")
print("Funkcja suma krawedzi: \(prostopadloscianA.sumaKrawedzi())")
print("Funkcja objetosc: \(prostopadloscianA.objetoscBryly())")
print("------------------\n")



print("Podaj liczbe studentow: ")
var wczytLiczba = readLine()!
while(Int(wczytLiczba)==nil || Int(wczytLiczba)! < 0)
{
    print("Wprowadzono niepoprawna liczbe studentow, wprowadz poprawna liczbe: ")
    wczytLiczba = readLine()!
}
var liczba = Int(wczytLiczba)!



var tablicaStudentow = Array(repeating: Student(imie: "", nazwisko: "", rok_urodzenia: 2005, numerIndeksu: 1, kierunekStudiow: kierunek.Informatyka, rokStudiow: 1, oceny: [ocena.bdb, ocena.bdb, ocena.db, ocena.bdb, ocena.dbplus]), count: liczba)






func wczytajRokUrodzenia()->Int
{
    print("Wprowadz rok urodzenia:")
    var wczytRok = readLine()!
    while(Int(wczytRok)==nil || Int(wczytRok)! < 1950)
    {
        print("Wprowadzono niepoprawny rok urodzenia. Wprowadz poprawny rok urodzenia: ")
        wczytRok = readLine()!
    }
    let rok = Int(wczytRok)!
    return rok
}
func wczytajKierunekStudiow()->kierunek
{
    print("Wprowadz kierunek studiow: ")
    var wczytKierunek = readLine()!
    while(wczytKierunek != "Informatyka" && wczytKierunek != "Matematyka" && wczytKierunek != "Filozofia" && wczytKierunek != "Elektrotechnika")
    {
        print("Wprowadzono niepoprawny kierunek studiow. Wprowadz poprawny kierunek: ")
        wczytKierunek = readLine()!
    }
    let kierx = wczytKierunek
    switch (kierx)
    {
    case "Informatyka":
        return kierunek.Informatyka
    case "Elektrotechnika":
        return kierunek.Elektrotechnika
    case "Filozofia":
        return kierunek.Filozofia
    case "Matematyka":
        return kierunek.Matematyka
    default:
        print("Wprowadzono nieprawidlowy kierunek")
        return kierunek.Filozofia
    }
    
}
func wczytajRokStudiow()->Int
{
    print("Wprowadz rok studiow: ")
    
    var wczytRok = readLine()!
    while(Int(wczytRok)==nil || (Int(wczytRok)! != 1 && Int(wczytRok)! != 2 && Int(wczytRok)! != 3 && Int(wczytRok)! != 4 && Int(wczytRok)! != 5))
    {
        print("Wprowadzono niepoprawny rok studiow. Wprowadz poprawny rok studiow: ")
        wczytRok = readLine()!
    }
    let rok = Int(wczytRok)!
    return rok
    
}

func wczytajOcenyStudenta()->[ocena]
{
    var tablica = Array(repeating: ocena.db, count: 5)
    for i in tablica.indices{
        print("Wprowadz ocene w formacie slownym\(i).: ")
        var wczytOcena = readLine()!
    while(wczytOcena != "ndst" && wczytOcena != "dost" && wczytOcena != "dostplus" && wczytOcena != "db" && wczytOcena != "dbplus" && wczytOcena != "bdb")
    {
        print("Wprowadzono niepoprawna ocene. Wprowadz poprawna ocene: ")
        wczytOcena = readLine()!
    }
    let ocenax = wczytOcena
    switch (ocenax)
    {
    case "bdb":
        tablica[i] = ocena.bdb
    case "dbplus":
        tablica[i] = ocena.dbplus
    case "db":
        tablica[i] = ocena.db
    case "dostplus":
        tablica[i] = ocena.dostplus
    case "dost":
        tablica[i] = ocena.dost
    case "ndst":
        tablica[i] = ocena.ndst
    default:
        tablica[i] = ocena.bdb
    }
    }
    return tablica
    
}
func wczytajDaneStudenta()->Student
{
    print("Wprowadz imie: ")
    let imie = readLine()!
    print("Wprowadz nazwisko: ")
    let nazwisko = readLine()!
    print("Wprowadz numer indeksu: ")
    var wprNrIndeksu = readLine()!
    while(Int(wprNrIndeksu) == nil || Int(wprNrIndeksu)! < 0)
    {
        print("Wprowadzono niepoprawny numer indeksu. Wprowadz poprawny numer indeksu: ")
        wprNrIndeksu = readLine()!
    }
    
    let nrIndeksu = Int(wprNrIndeksu)!
    
    let student = Student(imie: imie, nazwisko: nazwisko, rok_urodzenia: wczytajRokUrodzenia(), numerIndeksu: nrIndeksu, kierunekStudiow: wczytajKierunekStudiow(), rokStudiow: wczytajRokStudiow(), oceny: wczytajOcenyStudenta())
    return student
}

func wyswietlStudentaZKierunku()
{
    
    print("Wprowadz kierunek studiow: ")
    var wczytKierunek = readLine()!
    while(wczytKierunek != "Informatyka" && wczytKierunek != "Matematyka" && wczytKierunek != "Filozofia" && wczytKierunek != "Elektrotechnika")
    {
        print("Wprowadzono niepoprawny kierunek studiow. Wprowadz poprawny kierunek: ")
        wczytKierunek = readLine()!
    }
    let kierx = wczytKierunek
    print("Studenci kierunku: ")
    switch (kierx)
    {
    case "Informatyka":
       
        for i in tablicaStudentow{
            if(i.kierunekStudiow == kierunek.Informatyka)
            {
                i.wyswietl()
            }
                
        }
    case "Elektrotechnika":
        
         for i in tablicaStudentow{
             if(i.kierunekStudiow == kierunek.Elektrotechnika)
             {
                 i.wyswietl()
             }
                 
         }
    case "Filozofia":
        
         for i in tablicaStudentow{
             if(i.kierunekStudiow == kierunek.Filozofia)
             {
                 i.wyswietl()
             }
                 
         }    case "Matematyka":
        
         for i in tablicaStudentow{
             if(i.kierunekStudiow == kierunek.Matematyka)
             {
                 i.wyswietl()
             }
                 
         }
    default:
        print("Wprowadzono nieprawidlowy kierunek studiow")
        
    }
}

for i in tablicaStudentow.indices
{
    //tablicaStudentow[i] = wczytajDaneStudenta()
}



print("\n\n\n")
print("Dane studentow: ")
for i in tablicaStudentow.indices
{
    //tablicaStudentow[i].wyswietl()
}

//wyswietlStudentaZKierunku()
func wczytajKursy() -> [String: ocena] {
    var kursy: [String: ocena] = [:]

    print("Wprowadz kursy studenta (nazwa kursu: ocena):")
    
    while true {
        print("Wprowadz nazwe kursu (lub wpisz 'koniec' aby zakonczyc):")
        let nazwaKursu = readLine()!

        if nazwaKursu.lowercased() == "koniec" {
            break
        }

        print("Wprowadz ocene dla kursu w formacie numerycznym \(nazwaKursu):")
        let ocenaString = readLine()!

        if let ocenaDouble = Double(ocenaString), let ocenax = ocena(rawValue: ocenaDouble) {
            kursy[nazwaKursu] = ocenax
        } else {
            print("Nieprawidlowa ocena. Wprowadz ponownie nazwe kursu i poprawna ocene.")
        }
    }

    return kursy
}


func wczytajDaneStudentaNaErasmusie()->StudentNaErasmusie
{
    print("Wprowadz imie: ")
    let imie = readLine()!
    print("Wprowadz nazwisko: ")
    let nazwisko = readLine()!
    print("Wprowadz numer indeksu: ")
    var wprNrIndeksu = readLine()!
    while(Int(wprNrIndeksu) == nil || Int(wprNrIndeksu)! < 0)
    {
        print("Wprowadzono niepoprawny numer indeksu. Wprowadz poprawny numer indeksu: ")
        wprNrIndeksu = readLine()!
    }
    
    let nrIndeksu = Int(wprNrIndeksu)!
    
    print("Wprowadz nazwe uczelni za granica: ")
    let nazwaUczelniZaGranica = readLine()!
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    print("Wprowadz date rozpoczecia Erasmusa w formacie yyyy-MM-dd: ")
    var wprDataStart = readLine()!
    while( dateFormatter.date(from:wprDataStart ) == nil
           )
           {
        print("Wprowadzono niepoprawna date. Wprowadz poprawna date w formacie yyy-MM-dd: ")
        wprDataStart = readLine()!
    }
    let dataStart = wprDataStart
    
    
    print("Wprowadz date zakonczenia Erasmusa w formacie yyyy-MM-dd: ")
    var wprDataEnd = readLine()!
    while( dateFormatter.date(from:wprDataEnd ) == nil
           )
           {
        print("Wprowadzono niepoprawna date. Wprowadz poprawna date w formacie yyy-MM-dd: ")
        wprDataEnd = readLine()!
    }
    let dataEnd = wprDataEnd
    
    
    let student = StudentNaErasmusie(imie: imie, nazwisko: nazwisko, rok_urodzenia: wczytajRokUrodzenia(), numerIndeksu: nrIndeksu, kierunekStudiow: wczytajKierunekStudiow(), rokStudiow: wczytajRokStudiow(), oceny: wczytajOcenyStudenta(),nazwaUczelniZaGranica: nazwaUczelniZaGranica,dataRozpoczecia: dataStart,dataZakonczenia: dataEnd,kursy: wczytajKursy())
    return student
}

var studentNaErasmusie = wczytajDaneStudentaNaErasmusie()
studentNaErasmusie.wyswietl()
