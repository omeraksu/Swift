import UIKit

// If - Else
var isim = "omer"

if isim == "ömer" {
    print("vayy kardeşim naber?")
} else if isim == "ömer" || isim == "omer" {
    print("tanüyürüm seni bebişim")
} else if isim == "omr" || isim == "ome" {
    print("doğru yaz amq")
} else {
    print("sen kimsin olm?")
}

// Ternary Conditional
isim == "omer" ? print("lan olm sen mi geldin amq") : print("kimsin lan sen?")



// Alan Hesaplama Örneği
print("Çember Alanı (1)")
print("Dikdörtgen Alanı (2)")

let secim = 1
let kisaKenar = 10
let uzunKenar = 20
let yariCap = 5

print("Seçiminiz: \(secim)")

if secim == 1 {
    print("Dikdörtgen Alanı")
    print("Kısa Kenar: \(kisaKenar)")
    print("Uzun Kenar: \(uzunKenar)")
    let sonuc = kisaKenar * uzunKenar
    print("Sonuç: \(sonuc)")
}

if secim == 2 {
    print("Çember Alanı")
    print("Yarı Çap: \(yariCap)")
    let alan = 3.14 * Double(yariCap) * Double(yariCap)
    print("Alan: \(alan)")
}


// Toplama Çıkartma
print("Toplama (1)")
print("Çıkarma (2)")
print("Çarpma (3)")
print("Bölme (4)")

let tercih = 3
let sayi1 = 19
let sayi2 = 23

print("Tercih: \(tercih)")

if tercih == 1 {
    let sonuc = sayi1 + sayi2
    print("İşlem Sonucu: \(sonuc)")
} else if tercih == 2 {
    let sonuc = sayi1 - sayi2
    print("İşlem Sonucu: \(sonuc)")
} else if tercih == 3 {
    let sonuc = sayi1 * sayi2
    print("İşlem Sonucu: \(sonuc)")
} else if tercih == 4 {
    let sonuc = sayi1 / sayi2
    print("İşlem Sonucu: \(sonuc)")
}
