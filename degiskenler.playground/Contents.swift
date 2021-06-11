import UIKit

// VARIABLES
var ogrenciAdi = "ömer"
var ogrenciYas = 23
var ogrenciBoy = 1.73
var ogrenciBasHarf = "ö"

print(ogrenciAdi,ogrenciYas,ogrenciBoy,ogrenciBasHarf)


var urun_id : Int = 3244
var urun_adi : String = "Kol Saati"
var urun_adedi : Int = 34
var urun_fiyati : Double = 4322.99
var urun_tedarikci : String = "Rolex"

print("\nÜrün ID: \(urun_id)")
print("Ürün Ad: \(urun_adi)")
print("Ürün Adet: \(urun_adedi)")
print("Ürün Fiyat: \(urun_fiyati)")
print("Ürün Tedarikçi: \(urun_tedarikci)")


// Baştan değer atamalı
var sayi = 32

// Sonradan değer atamalı
var sayi2 : Int?
sayi2 = 43
print(sayi2!)

// Tek satırda birden fazla
var numara = 42, numara2 = 53, isimler = "kim lan bu", budalaHarf = "a"

// Değişken değeri sonradan değiştirilebilir
var fiyat = 53
print(fiyat)
fiyat = 23
print(fiyat)

// Değişkenin değeri diğer değişkenlerin işlem sonuçları olabilir
var s1 = 50
var s2 = 97
var toplam = s1 + s2
print(toplam)


// Type Safety
var sonuc = 500
sonuc = 23
// sonuc = "lan" -> cannot assign value of type 'String' to type 'Int'


// SCOPE -> local her zaman globale baskın gelmektedir

class Deneme {
    var x = 40 // Global
    var y = 60 // Global
    
    func topla() {
        var x = 30 // Local
        
        x = x + y
        print(x)
    }
    
    func carp(){
        x = x * y
        print(x)
    }
    
}
var d = Deneme()
d.topla()
d.carp()


// CONSTANT - SABİTLER
var a = 50
a = 70
a = 233

let b = 50
// b = 32 -> Cannot assign to value: 'b' is a 'let' constant


// Daire Alanı
let pi = 3.14
let yaricap = 2.0
let alan = pi * yaricap * yaricap

// Kuvvet formulü
// F = m * f
let m = 14.5
let almayan = 4.2
let f = m * almayan


// Ax
let v = 12.6
let v0 = 23.43
let t = 4.5

var x1 = ((v + v0) / 2) * t

var x2 = (v0*t) + (f*t*t) / 2

// Kısaltmalar
var kisalt = 50
kisalt = kisalt + 20
kisalt += 30
kisalt *= 3


// Tip Dönüşümleri
var double : Double = 32.42133
var sonuc1 : Int = Int(double)

// unwrapping
var str = "54"
if let sayi = Int(str){
    print(sayi)
}

var str2 = "54T"
if let sayi2 = Int(str2){
    print(sayi2) // dönüşmediğinden çalışmaz
}

// Tuples
var nokta = (x:10,y:20)
var x = nokta.x
var y = nokta.y

var hatamesaji = (404,"not found")
var (kod, mesaj) = hatamesaji
print(kod, mesaj)

var ogrenci:(Int,(Bool,String)) = (1285,(true,"Ömer"))
print(ogrenci.0)
print(ogrenci.1)
print(ogrenci.1.0)
print(ogrenci.1.1)
