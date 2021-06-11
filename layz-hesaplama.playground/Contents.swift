import UIKit

// layz olayı
class Ornek {
    lazy var a = 50
}
var ilk = Ornek()
print(ilk.a)


// Hesaplama Özelliği
class Maas {
    var maas:Double?
    var bonus:Double?
    
    var haftalikMaas:Double {
        get {
            return (maas! * bonus!) / 52
        }
        set (yeniMaas) {
            self.maas! = yeniMaas * 52
        }
    }
}

var maas1 = Maas()
maas1.maas = 2300
maas1.bonus = 1.4
print(maas1.haftalikMaas)
maas1.haftalikMaas = 300
print(maas1.haftalikMaas)
