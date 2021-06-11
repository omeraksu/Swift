import UIKit

// Geri Dönüş değeri almayan
func selam() {
    let sonuc = "Selam kardeşim"
    print(sonuc)
}
selam()

// Geri dönüş değeri alan
func selam2() -> String {
    let sonuc = "lan olm"
    return sonuc
}
let geldi = selam2()
print(geldi)


// Parametreli
func parametres(isim: String) {
    let kimsin = "Selam \(isim)"
    print(kimsin)
}
parametres(isim: "ömer")


func hesaplaBaba(sayi1: Int, sayi2:Int) -> Int {
    let toplam = sayi2 + sayi1
    return toplam
}
let topla = hesaplaBaba(sayi1: 23, sayi2: 51)
print(topla)


// Sınıftan erişim
class HesapMakinesi {
    func topla(sayi1: Int, sayi2: Int) -> Int {
        return sayi1 + sayi2
    }
    
    func cikar(sayi1: Int, sayi2: Int) {
        let toplam = sayi1 + sayi2
        print(toplam)
    }
    
    func carp(sayi1: Int, sayi2: Int) {
        print(sayi1 * sayi2)
    }
    
    func bol(sayi1: Int, sayi2: Int) -> Int {
        return sayi1 / sayi2
    }
}

let hesabım = HesapMakinesi()

hesabım.carp(sayi1: 20, sayi2: 50)

let bol = hesabım.bol(sayi1: 59, sayi2: 8)
print(bol)

print(hesabım.topla(sayi1: 200, sayi2: 422))

hesabım.cikar(sayi1: 400, sayi2: 52)


// Overloading
class Hesaplam {
    func topla(sayi1:Int,sayi2:Int) {
        print("Toplam: \(sayi1 + sayi2)")
    }
    func topla(sayi1:Int,sayi2:Double) {
        print("Toplam: \(Double(sayi1) + sayi2)")
    }
    func topla(sayi1:Double,sayi2:Double) {
        print("Toplam: \(sayi1 + sayi2)")
    }
    func topla(sayi1:Double,sayi2:Int) {
        print("Toplam: \(sayi1 + Double(sayi2))")
    }
}

var h = Hesaplam()
h.topla(sayi1: 43.2, sayi2: 52.3)
h.topla(sayi1: 24.3, sayi2: 53)
h.topla(sayi1: 24, sayi2: 23.4)
h.topla(sayi1: 24, sayi2: 32)


// variadic parametre
func variadicim(sayilar:Int...) -> Int {
    var toplam = 0
    for s in sayilar {
        toplam += s
    }
    return toplam
}
let toplacam = variadicim(sayilar: 24,13,5123,5123,421,331)
print(toplacam)


// birden fazla dönüş değeri
func birdenCok(sayilar:[Int]) -> (toplam:Int,factor:Int) {
    var toplam = 0
    var factor = 1
    for s in sayilar {
        toplam += s
        factor *= s
    }
    return (toplam, factor)
}
var dizi = [1,2,3,4,5,6]
var p1 = birdenCok(sayilar: dizi)
print(p1.toplam)
print(p1.factor)


// Optional Geri Dönüş
func optiFunc(sayi1: Int, sayi2: Int) -> Int? {
    let islem = sayi1 * sayi2
    return islem
}
let lan = optiFunc(sayi1: 224, sayi2: 32)
if let loo = lan {
    print(loo)
}


// local ve global parametre
func gloBal(sayi1 la:Int, sayi2 lo:Int) -> Int {
    return la * lo
}
print(gloBal(sayi1: 23, sayi2: 52))


// localin globali etkilemesi
func gloBol(a: inout Int, b: inout Int) -> Int{
    return a * b
}

var x = 10
var y = 20
gloBol(a: &x, b: &y)
