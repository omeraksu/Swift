import UIKit

// ARRAY
var dizi1 = [Int]() // Boş dizi
var dizi2 = [1,2,3,4] // Değeri baştan tanımlı
var dizi3:[Float] = [1.4,10.3,24.3]
var dizi4 = [Int](repeating: 3, count: 4) // 4 tane 3 koydu içeriye

var meyveler:[String] = ["Elma","Armut","Kiraz"]
meyveler.append("Karpuz")
meyveler += ["Kavun"]
meyveler[2] = "Ananas"
meyveler.insert("Kivi", at: 1)

meyveler.isEmpty
meyveler.count
meyveler.first
meyveler.last

meyveler.contains("Karpuz")
meyveler.max()
meyveler.min()

meyveler.reverse()
meyveler.sort()

meyveler.remove(at: 4)

for meyve in meyveler {
    print(meyve)
}

for (index, meyve) in meyveler.enumerated() {
    print("Index: \(index) Meyve: \(meyve)")
}

meyveler.removeAll()

// array filtreleme
var sayilar = [1,2,3,4,5,6,7,8,9,10]

var sayi1 = sayilar.filter({$0 > 5}) // $0 -> her bir elemanı temsil ediyor. 5'den sonrası
print(sayi1)

var sayi2 = sayilar.filter({$0 < 5})
print(sayi2)

var sayi3 = sayilar.filter({$0 > 3 && $0 < 7})
print(sayi3)

// ortalama hesaplama
var notlar = [40,50,70,100,90,95,60]
var toplam = 0

for not in notlar {
    toplam += not
}
print(toplam / notlar.count)

// içerik değiştirme
var icerik = [1,2,3,4,5,6,7,8]

for (index,sayi) in icerik.enumerated() {
    let sonuc = sayi * 2
    icerik[index] = sonuc
}
print(icerik)

// tek çift sayılar
var tekcift = [10,20,32,25,53,63,67,98,31,52]

var tekler = [Int]()
var ciftler = [Int]()

for i in tekcift {
    let sonuc = i % 2
    if sonuc == 0 {
        ciftler.append(i)
    } else {
        tekler.append(i)
    }
}
print(tekler, ciftler)


// rasgele sayı üretme
var rasgel = [Int]()
for _ in 1...10  {
    let rasgelsayi = arc4random_uniform(10)
    rasgel.append(Int(rasgelsayi))
}
print(rasgel.sorted())


// karne uygulaması
var dersler = [String]()
var sinav = [Int]()
var ortam = 0

dersler.append("Matematik")
sinav.append(80)

dersler.append("Fizik")
sinav.append(60)

dersler.append("Biyoloji")
sinav.append(70)

dersler.append("Müzik")
sinav.append(100)

for i in 0...(dersler.count - 1) {
    print("\(dersler[i]) : \(sinav[i])")
    ortam += sinav[i]
}
print("Ortalama: \(ortam / sinav.count)")


// isim arama
var liste:[String] = ["Ali","Ahmet","Ayşe","Fatma","Hayriye"]
var isimkontrol = liste.contains("Fatma")

for _ in liste {
    if isimkontrol {
        print("Hoş geldiniz karşim")
        break
    }
}
