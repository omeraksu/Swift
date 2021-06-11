import UIKit

// Switch - Case
let secim = 1
let s1 = 23
let s2 = 14
print("Toplama (1)")
print("Çıkarma (2)")
print("Çarpma (3)")
print("Bölme (4)")
print("Seçiminiz: \(secim)")

switch secim {
case 1:
    let sonuc = s1 + s2
    print("Sonuc: \(sonuc)")
case 2:
    let sonuc = s1 - s2
    print("Sonuc: \(sonuc)")
case 3:
    let sonuc = s1 * s2
    print("Sonuc: \(sonuc)")
case 4:
    let sonuc = s1 / s2
    print("Sonuc: \(sonuc)")
default:
    print("Böyle bir işlem yok")
}


// Tek mi çift mi
let sayi = 23
let sonuc = sayi % 2

switch sonuc {
case 1:
    print("Girilen Sayı tektir")
case 0:
    print("Girilen Sayı Çifttir")
default:
    print("Sayı girdiğine emin misin?")
}
