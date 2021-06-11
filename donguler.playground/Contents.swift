import UIKit

// for-in
for i in 1..<7 {
    print(i)
}

let baslangic = 0
let bitis = 40
let miktar = 4
let miktar2 = -3

for a in stride(from: baslangic, through: bitis, by: miktar) {
    print(a)
}

for a in stride(from: bitis, through: baslangic, by: miktar2) {
    print(a)
}


// while
var sayac = 1

while sayac < 5 {
    print(sayac)
    sayac += 1
}
