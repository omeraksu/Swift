import UIKit

let ifade = {
    print("lan kimsin sen")
}

ifade()

let toplama = {
    (sayi1:Int,sayi2:Int) -> Int in
    return sayi1 + sayi2
}

let toplam = toplama(10,20)
print(toplam)


// Closure Şartları
var sayilar:[Int] = [10,20,30,11,40,23,50,32]

let sirala1 = sayilar.sorted(by: { s1,s2 in s1 < s2 })
let sirala2 = sayilar.sorted(by: { s1,s2 in s1 > s2 })
let sirala3 = sayilar.sorted(by: { $0 < $1 })
let sirala4 = sayilar.sorted(by: > )

print(sirala1)
print(sirala2)
print(sirala3)
print(sirala4)
