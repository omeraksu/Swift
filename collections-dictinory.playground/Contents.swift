import UIKit

var iller = [Int:String]()
var dic2 = [3.14:"Pi",2.71:"E"]
var dic3:[Int:String] = [1:"Bir",2:"İki",3:"Üç"]

iller[16] = "Bursa"
iller[34] = "İstanbul"
iller[06] = "Ankara"

iller.updateValue("Yenişehir", forKey: 16)
print(iller[16]!)

for (index,sehir) in iller {
    print("Plaka: \(index)  Şehir: \(sehir)")
}
iller.removeValue(forKey: 06)

// arrayden dictionary yapma
var dersler = ["Kimya","Matematik","Biyoloji"]
var notlar = [50,70,100]

var dersNotları = Dictionary(uniqueKeysWithValues: zip(notlar, dersler))
print(dersNotları)

// dicten array yapma
var parca = [Int](dersNotları.keys)
var parcas = [String](dersNotları.values)
print(parca,parcas)


// filtreleme olayları
var okul:[Int:String] = [2565:"Ömer",243:"Ahmet",643:"Fatih"]

var sonucDic = okul.filter({$0.key > 400})
print(sonucDic)

var sonucDic2 = okul.filter({$0.value == "Ömer"})
print(sonucDic2)

var sonucDic3 = okul.filter({$0.key > 500 && $0.value == "Ömer"})
print(sonucDic3)


// karne pratiği
var karnemsi = [String:Int]()
var notum = 0
karnemsi["Matematik"] = 100
karnemsi["Fizik"] = 60
karnemsi["Biyoloji"] = 70
karnemsi["Kimya"] = 90
karnemsi["Geometri"] = 89

for (ders,not) in karnemsi {
    print("\(ders) : \(not)")
    notum += not
}
print("Ortalama: \(notum / karnemsi.count)")
