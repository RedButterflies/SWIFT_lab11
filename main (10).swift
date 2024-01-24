//
//  main.swift
//  zad11
//
//  Created by admin on 1/17/24.
//

import Foundation

var prostokat = Prostokat(bokA_len: 12, bokB_len: 4)
print("\n")
prostokat.wyswietl()
print("\n")
var prostopadloscian = Prostopadloscian(bokA_len: 3, bokB_len: 6, wysokosc: 10)
prostopadloscian.wyswietl()



//11.3
var studentJacek = Student(imie: "Jacek", nazwisko: "Placek", rokUrodzenia: 2005, nrIndeksu: 3908, kierunekStudiow: kierunek.Informatyka, rokStudiow: 5, oceny: [Oceny.dbplus,Oceny.bdb,Oceny.db,Oceny.dbplus,Oceny.dst])

studentJacek.wyswietl()


func wczytajRokUrodzenia()->Int
{
    print("Wprowadz rok urodzenia studenta: ")
    var wrok = readLine()!
    while(Int(wrok)==nil || Int(wrok)! < 1970)
    {
        print("Wprowadzono niepoprawny rok urodzenia. Wprowadz rok urodzenia studenta: ")
        wrok = readLine()!
    }
    let rok = Int(wrok)!
    return rok
}
func wczytajKierunkeStudiow()->kierunek
{
    print("Podaj kierunek studiow studenta: ")
    print("""
Wybierz jedna z opcji
1-Informatyka
2-Matematyka
3-Filozofia
4-Elektrotechnika
""")
    var wybor = readLine()!
    while(Int(wybor)==nil || (Int(wybor)! != 1 && Int(wybor)! != 2 && Int(wybor)! != 3 && Int(wybor)! != 4))
          {
        print("Wprowadzono nieprawidlowa warosc. Wybierz jedna z opcji: ")
        wybor = readLine()!
    }
    let k = Int(wybor)!
   
    switch(k)
    {
    case 1:
        return kierunek.Informatyka
    case 2:
        return kierunek.Matematyka
    case 3:
        return kierunek.Filozofia
    case 4:
      return kierunek.Elektrotechnika
    default:
        return kierunek.Informatyka
    }
}
func wczytajRokStudiow()->Int
{
    print("Wprowadz rok studiow studenta: ")
    var wrok = readLine()!
    while(Int(wrok)==nil || (Int(wrok)!<=0 || Int(wrok)!>5))
    {
        print("Wprowadzono niepoprawny rok studiow. Wprowadz rok studiow studenta: ")
        wrok = readLine()!
    }
    let rok = Int(wrok)!
    return rok
}
func wczytajOcenyStudenta()->[Oceny]
{
    var tabOcen = Array(repeating: Oceny.bdb, count: 5)
    print("""
Wartosciami ocen moga byc
2.0
3.0
3.5
4.0
4.5
5.0
""")
    for i in tabOcen.indices
    {
        print("Wprowadz ocene \(i). studenta: ")
        var wocena = readLine()!
        while(Double(wocena)==nil || Oceny.init(rawValue: Double(wocena)!)==nil)
        {
            print("Wprowadzono niepoprawna ocene. Wprowadz ocene \(i). studenta: ")
            wocena = readLine()!
        }
        tabOcen[i] = Oceny.init(rawValue: Double(wocena)!)!
    }
    return tabOcen
    
}
func wczytajImieStudenta()->String
{
    print("Wprowadz imie studenta: ")
    let imie = readLine()!
    return imie
}
func wczytajNazwiskoStudenta()->String
{
    print("Wprowadz nazwisko studenta: ")
    let nazwisko = readLine()!
    return nazwisko
    
}
func wczytajNrIndeksuStudenta()->Int
{
    print("Wprowadz numer indeksu studenta: ")
    var wNrIn = readLine()!
    while(Int(wNrIn)==nil || Int(wNrIn)! <= 0)
    {
        print("Wprowadzono niepoprawny numer indeksu. Wprowadz numer indeksu studenta: ")
        wNrIn = readLine()!
    }
    return Int(wNrIn)!
}
func wczytajDaneStudenta()->Student
{
   return Student(imie: wczytajImieStudenta(), nazwisko: wczytajNazwiskoStudenta(), rokUrodzenia: wczytajRokUrodzenia(), nrIndeksu: wczytajNrIndeksuStudenta(), kierunekStudiow: wczytajKierunkeStudiow(), rokStudiow: wczytajRokStudiow(), oceny: wczytajOcenyStudenta())
}

func wyswietlStudentaNaKierunku(a: [Student],b:kierunek)
{
    print("\nStudenci na kierunku \(b): \n")
    for i in a.indices
    {
        if(a[i].kierunekStudiow == b)
        {
            a[i].wyswietl()
            print("\n")
        }
    }
    print("\n")
    
}

func stworzTabliceStudentow(n:Int)->[Student]
{
    var tablica = Array(repeating: Student(imie: "", nazwisko: "", rokUrodzenia: 1999, nrIndeksu: 1111, kierunekStudiow: kierunek.Informatyka, rokStudiow: 1, oceny: [Oceny.db,Oceny.bdb,Oceny.bdb,Oceny.dbplus,Oceny.bdb]), count: n)
    for i in tablica.indices
    {
        tablica[i] = Student(imie: wczytajImieStudenta(), nazwisko: wczytajNazwiskoStudenta(), rokUrodzenia: wczytajRokUrodzenia(), nrIndeksu: wczytajNrIndeksuStudenta(), kierunekStudiow: wczytajKierunkeStudiow(), rokStudiow: wczytajRokStudiow(), oceny: wczytajOcenyStudenta())
    }
    return tablica
    
}

func podajLiczbeStudentow()->Int{
print("Podaj liczbe studentow: ")
var wliczbaS = readLine()!
while(Int(wliczbaS)==nil || Int(wliczbaS)! <= 0)
{
    print("Wprowadzono nieprawidlowa liczbe studentow. Wprowadz liczbe studentow: ")
    wliczbaS = readLine()!
}
    return Int(wliczbaS)!
}
func podajLiczbeKursow()->Int{
print("Podaj liczbe kursow: ")
var wliczbaS = readLine()!
while(Int(wliczbaS)==nil || Int(wliczbaS)! <= 0)
{
    print("Wprowadzono nieprawidlowa liczbe kursow. Wprowadz liczbe kursow: ")
    wliczbaS = readLine()!
}
    return Int(wliczbaS)!
}


//print("\n\n")
//let tablicaStudentow = stworzTabliceStudentow(n: podajLiczbeStudentow())
//
//for i in tablicaStudentow.indices
//{
//    print("\n--------------\n")
//    tablicaStudentow[i].wyswietl()
//
//}
func wczytajNazweUczelniZaGranica()->String
{
    print("Wprowadz nazwe uczelni za granica: ")
    var uczelniaZaGranica = readLine()!
    return uczelniaZaGranica
}
func wczytajDateRozpoczeciaErasmusa()->String
{
    print("Wprowadz date rozpoczecia Erasmusa w formacie yyyy-MM-dd: ")
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    var data = readLine()!
    while(dateFormatter.date(from: data)==nil)
    {
        print("Wprowadzono nieprawidlowa date. Wprowadz date w formacie yyyy-MM-dd: ")
        data = readLine()!
    }
    return data
}
func wczytajDateZakonczeniaErasmusa()->String
{
    print("Wprowadz date zakonczenia Erasmusa w formacie yyyy-MM-dd: ")
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    var data = readLine()!
    while(dateFormatter.date(from: data)==nil)
    {
        print("Wprowadzono nieprawidlowa date. Wprowadz date w formacie yyyy-MM-dd: ")
        data = readLine()!
    }
    return data
}
func wczytajKursy(n:Int)->[String:Oceny]
{
    var kursy:[String:Oceny] = [:]
    for _ in stride(from: 0, to: n, by: 1)
    {
        print("Wprowadz nazwe kursu: ")
        let kurs = readLine()!
        print("""
            Oceny moga przyjmowac wartosci:
            5.0
            4.5
            4.0
            3.5
            3.0
            2.0
            """)
        print("Wprowadz ocene za kurs \(kurs) ")
        var wocena = readLine()!
        while(Double(wocena)==nil || Oceny.init(rawValue: Double(wocena)!)==nil)
        {
            print("Wprowadzono niepoprawna ocene. Wprowadz poprawna ocene: ")
            wocena = readLine()!
        }
        let ocena = Oceny.init(rawValue: Double(wocena)!)
        kursy[kurs]=ocena
                    
    }
    return kursy
    
}



var Erik = StudentNaErasmusie(imie: wczytajImieStudenta(), nazwisko: wczytajNazwiskoStudenta(), rokUrodzenia: wczytajRokUrodzenia(), nrIndeksu: wczytajNrIndeksuStudenta(), kierunekStudiow: wczytajKierunkeStudiow(), rokStudiow: wczytajRokStudiow(), oceny: wczytajOcenyStudenta(), nazwaUczelniZaGranica: wczytajNazweUczelniZaGranica(), dataRozpoczeciaErasmusa: wczytajDateRozpoczeciaErasmusa(), dataZakonczeniaErasmusa: wczytajDateZakonczeniaErasmusa(), kursy: wczytajKursy(n: podajLiczbeKursow()))

Erik.wyswietl()

