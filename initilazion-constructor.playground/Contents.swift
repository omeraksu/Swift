import UIKit

class Kisiler {
    var ad: String?
    var soyad: String?
    
    init(ad: String, soyad: String) {
        self.ad = ad
        self.soyad = soyad
    }
}

let omer = Kisiler(ad: "Ömer", soyad: "Aksu")
print(omer.ad!)
print(omer.soyad!)
