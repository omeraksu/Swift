import UIKit


// Composition
class Kisiler {
    var ad: String?
    var yas: Int?
    var adres: Adres?
    init(ad: String, yas: Int,adres: Adres) {
        self.ad = ad
        self.yas = yas
        self.adres = adres
    }
}

class Adres {
    var il: String?
    var ilce: String?
    
    init(il:String,ilce:String) {
        self.il = il
        self.ilce = ilce
    }
}

let adres = Adres(il: "Bursa", ilce: "Yıldırım")
let kisi = Kisiler(ad: "Ömer", yas: 23, adres: adres)
print(kisi.ad!)
print(kisi.yas!)
print(kisi.adres!.il!)
print(kisi.adres!.ilce!)



// yönetmen-film
class Kategori {
    var kategori_id: Int?
    var kategori_ad: String?
    
    init(kategori_id:Int,kategori_ad:String){
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}

struct Yonetmen {
    var yonetmen_id: Int?
    var yonetmen_ad: String?
    
    init(yonetmen_id:Int,yonetmen_ad:String){
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}

class Filmler {
    var film_id: Int?
    var film_ad: String?
    var film_yil: Int?
    var kategori: Kategori?
    var yonetmen: Yonetmen?
    
    init(film_id:Int,film_ad:String,film_yil:Int,kategori:Kategori,yonetmen:Yonetmen) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

var k1 = Kategori(kategori_id: 1, kategori_ad: "Dram")
var k2 = Kategori(kategori_id: 2, kategori_ad: "Komedi")
var k3 = Kategori(kategori_id: 3, kategori_ad: "Bilim Kurgu")

var y1 = Yonetmen(yonetmen_id: 1, yonetmen_ad: "Onur Ünlü")
var y2 = Yonetmen(yonetmen_id: 2, yonetmen_ad: "Ali Atay")
var y3 = Yonetmen(yonetmen_id: 3, yonetmen_ad: "Cem Yılmaz")

var f1 = Filmler(film_id: 1, film_ad: "Sen Aydınlatırsın Geceyi", film_yil: 2014, kategori: k1, yonetmen: y1)
var f2 = Filmler(film_id: 2, film_ad: "Cinayet Süsü", film_yil: 2019, kategori: k2, yonetmen: y2)
var f3 = Filmler(film_id: 3, film_ad: "GORA", film_yil: 2003, kategori: k3, yonetmen: y3)

print("Film Ad:  \(f1.film_ad!)")
print("Film Yıl:  \(f1.film_yil!)")
print("Yönetmen:  \(f1.yonetmen!.yonetmen_ad!)")
print("Kategori:  \(f1.kategori!.kategori_ad!)")

