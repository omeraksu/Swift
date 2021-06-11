import UIKit

// Referans tipi
class Ogrenci {
    var ad:String?
}

var ogr1 = Ogrenci()
ogr1.ad = "ömer"
print(ogr1.ad!)

var ogr2 = ogr1
ogr2.ad = "ali"
print(ogr1.ad!)


// Deger Tipi
struct Kopek {
    var renk: String?
}

var kirmizi = Kopek()
kirmizi.renk = "kirmizi"
print(kirmizi.renk!)

var beyaz = kirmizi
beyaz.renk = "beyaz"
print(kirmizi.renk!)
print(beyaz.renk!)
