import UIKit


enum Hata:Error {
    case sifiraBolunmez
}

// throw
func bolme(s1:Int,s2:Int) throws -> Int {
    if s2 == 0 {
        throw Hata.sifiraBolunmez
    }
    return s1 / s2
}


var s1 = 10
var s2 = 0
// bolme(s1: 10, s2: 5)

do {
    _ = try bolme(s1: s1, s2: s2)
} catch Hata.sifiraBolunmez {
    print("Sayi sıfıra bölünmez")
}


// ? olunca do ve catch e gerek kalmaz ama hata olursa nil döner
let sonuc = try? bolme(s1: s1, s2: s2)
sonuc != nil ? print("Sonuc: \(sonuc!)") : print("Hata yok")

// ! ile olunca ise hata gelmeyeceğini garanti ediyoruz bir nevi. ama dikkat etmek gerek
// let sonuc = try! bolme(s1: s1, s2: 2)
