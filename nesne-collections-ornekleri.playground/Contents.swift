import UIKit

// Öğrenci Örneği
class Ogrenci {
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int,ad:String,sinif:String) {
        self.ad = ad
        self.no = no
        self.sinif = sinif
    }
}

var o1 = Ogrenci(no: 2565, ad: "Ömer", sinif: "10/A")
var o2 = Ogrenci(no: 1130, ad: "Ali", sinif: "12/B")
var o3 = Ogrenci(no: 2443, ad: "Ahmet", sinif: "9/C")
var o4 = Ogrenci(no: 124, ad: "Sude", sinif: "11/D")
var o5 = Ogrenci(no: 245, ad: "Nisa", sinif: "9/D")

var ogrList = [Ogrenci]()
ogrList.append(o1)
ogrList.append(o2)
ogrList.append(o3)
ogrList.append(o4)
ogrList.append(o5)

//for ogr in ogrList {
//    print("Öğrenci Adı      : \(ogr.ad!)")
//    print("Öğrenci No       : \(ogr.no!)")
//    print("Öğrenci Sınıf    : \(ogr.sinif!)")
//    print("-----")
//}



// Sort Methodu
class Kisiler {
    var no:Int?
    var ad:String?
    
    init (no:Int,ad:String){
        self.no = no
        self.ad = ad
    }
}

let kisi1 = Kisiler(no: 1, ad: "Ömer")
let kisi2 = Kisiler(no: 2, ad: "Ahmet")
let kisi3 = Kisiler(no: 3, ad: "Mehmet")

var kisiArray = [Kisiler]()

kisiArray.append(kisi1)
kisiArray.append(kisi2)
kisiArray.append(kisi3)

//print("--ilk başı--")
//for i in kisiArray {
//    print("\(i.no!) - \(i.ad!)")
//}


//print("--Sayısal Büyükten Küçüğe--")
//let sira1 = kisiArray.sorted(by: {$0.no! > $1.no!})
//for sira in sira1 {
//    print("\(sira.no!) - \(sira.ad!)")
//}


//print("--Sayısal Küçükten Büyüğe--")
//let sira2 = kisiArray.sorted(by: {$0.no! < $1.no!})
//for sira in sira2 {
//    print("\(sira.no!) - \(sira.ad!)")
//}


//print("--Metinsel Küçükten Büyüğe--")
//let sira3 = kisiArray.sorted(by: {$0.ad! < $1.ad!})
//for kisi in sira3 {
//    print("\(kisi.no!) - \(kisi.ad!)")
//}


//print("--Metinsel Büyükten Küçüğe--")
//let sira4 = kisiArray.sorted(by: {$0.ad! > $1.ad!})
//for kisi in sira4 {
//    print("\(kisi.no!) - \(kisi.ad!)")
//}



// Karne uygulaması

class Karne {
    var ders:String?
    var not:Int?
    
    init(ders: String,not:Int){
        self.ders = ders
        self.not = not
    }
}

var not1 = Karne(ders: "Matematik", not: 80)
var not2 = Karne(ders: "Fizik", not: 90)
var not3 = Karne(ders: "Biyoloji", not: 76)
var not4 = Karne(ders: "Kimya", not: 79)
var not5 = Karne(ders: "Müzik", not: 60)

var notList = [Karne]()
notList.append(not1)
notList.append(not2)
notList.append(not3)
notList.append(not4)
notList.append(not5)
var toplam = 0

//for not in notList {
//    print("\(not.ders!) - \(not.not!)")
//    toplam += not.not!
//}


//print("----")
//let ortalam = toplam / notList.count
//print("Ortalama: \(ortalam)")


//if ortalam > 50 {
//    print("Geçti")
//} else {
//    print("Kaldı")
//}


// Composition
class Adres {
    var il:String?
    var ilce:String?
    
    init(il:String,ilce:String) {
        self.il = il
        self.ilce = ilce
    }
}

class Personel {
    var personelNo:Int?
    var personelIsim:String?
    var personelAdres:Adres?
    
    init(personelNo:Int,personelIsim:String,personelAdres:Adres) {
        self.personelNo = personelNo
        self.personelIsim = personelIsim
        self.personelAdres = personelAdres
    }
}

var adres1 = Adres(il: "Bursa", ilce: "Yıldırım")
var adres2 = Adres(il: "İstanbul", ilce: "Bağcılar")
var adres3 = Adres(il: "Ankara", ilce: "Çankaya")

var personel1 = Personel(personelNo: 23, personelIsim: "Ömer", personelAdres: adres1)
var personel2 = Personel(personelNo: 52, personelIsim: "Ali", personelAdres: adres2)
var personel3 = Personel(personelNo: 56, personelIsim: "Veli", personelAdres: adres3)

var personList = [Personel]()
personList.append(personel1)
personList.append(personel2)
personList.append(personel3)

//for p in personList {
//    print("----")
//    print("Personel No: \(p.personelNo!)")
//    print("Personel Ad: \(p.personelIsim!)")
//    print("Personel İl: \(p.personelAdres!.il!)")
//    print("Personel İlçe: \(p.personelAdres!.ilce!)")
//}



// Set - Öğrenci Uygulaması
class SetOgrenci:Equatable { // Hashable
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int,ad:String,sinif:String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
    var hasValue:Int {
        get {
            return no.hashValue
        }
    }
    static func == (lhs: SetOgrenci, rhs: SetOgrenci) -> Bool {
        return lhs.no == rhs.no
    }
}

var ogr1 = SetOgrenci(no: 140, ad: "Ömer", sinif: "10-A")
var ogr2 = SetOgrenci(no: 250, ad: "Ahmet", sinif: "12-F")




// Dictionary
class Ogrencim {
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int,ad:String,sinif:String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var no1 = Ogrencim(no: 23, ad: "Ömer", sinif: "10-A")
var no2 = Ogrencim(no: 53, ad: "Ahmet", sinif: "10-F")
var no3 = Ogrencim(no: 74, ad: "Ali", sinif: "10-D")

var ogrDic = [Int:Ogrencim]()

ogrDic[no1.no!] = no1
ogrDic[no2.no!] = no2
ogrDic[no3.no!] = no3

for (no,nesne) in ogrDic {
    print("---")
    print("Ogr No: \(no)")
    print("İsim: \(nesne.ad!)")
    print("Sınıf : \(nesne.sinif!)")
}
