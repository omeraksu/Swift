import UIKit

// derece dönüştür
struct Derece {
    func dereceDonus(derece: Double) -> Double {
        return derece * 1.8 + 32.0
    }
}
let olcum = Derece()
print("Derece dönüşümü: \(olcum.dereceDonus(derece: 45.4))")


// diktörtgen alanı hesaplama
func dikdort(kisa: Int, uzun: Int) -> Int {
    return kisa * uzun
}
print("Diktörtgen Alanı: \(dikdort(kisa: 23, uzun: 42))")


// faktöriyel
func facto(sayi: Int) -> Int {
    var facto = 1
    for fak in 1...sayi {
        facto *= fak
    }
    return facto
}
print("Faktöriyel: \(facto(sayi: 8))")


// kelimeden harf sayısı çıkartma
func harfimgen(kelime: String, harf:Character)  {
    var harfs = 0
    for k in kelime {
        if k == harf {
            harfs += 1
        }
    }
    print("harf adadi \(harfs)")
}
harfimgen(kelime: "ömer", harf: "ö")



// açıların toplamı
func icAcilarim(kenar: Int) -> Int {
    return (kenar - 2) * 180
}
print(icAcilarim(kenar: 3))



// maaş hesabı
func maasim(gun: Int) -> Int {
    let saatlik = 10
    let mesai = 20
    let gunluk = 8
    let total = gun * gunluk
    let maas = total * saatlik
    if total > 160 {
        let mesaim = total - 160
        let mesa = mesaim * mesai
        return mesa
    } else {
        return maas
    }
}
print(maasim(gun: 20))


// kotamız
func kotamiz(gb: Int) -> Int {
    if gb <= 50 {
        return 100
    } else {
        let asim = gb - 50
        let astim = asim * 4 + 100
        return astim
    }
}
print(kotamiz(gb: 70))
