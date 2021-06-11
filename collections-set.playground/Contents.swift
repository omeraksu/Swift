import UIKit

var meyveler:Set = ["Elma","Armut","Üzüm"]
var sayilar = Set<Int>()
var sehirler:Set<String> = ["Bursa","İstanbul","Ankara"]

sayilar.insert(23)
sayilar.count

sayilar.isEmpty
sayilar.contains(20)
sayilar.sorted()
sayilar.remove(23)
sayilar.removeAll()

for s in sehirler {
    print(s)
}


// set'e özgü methotlar
let tekler:Set = [1,3,5,7,9]
let ciftler:Set = [2,4,6,8,10]
let asal:Set = [2,3,5,7]

tekler.union(ciftler).sorted() // birleşim
tekler.intersection(ciftler).sorted() // kesişim
tekler.symmetricDifference(asal).sorted() // fark
tekler.subtracting(asal).sorted() // ayrıştırır
