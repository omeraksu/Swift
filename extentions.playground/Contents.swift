import UIKit

// Degisken kullanımı
extension Double {
    var km:Double { return self * 1000 }
    var m:Double { return self }
    var cm:Double { return self / 100 }
    var mm:Double { return self / 1000 }
}

print("10 km \(10.km) m'dir")
print("2543 cm \(2543.cm) m'dir")
print("215123 mm \(215123.mm) m'dir")


// Metod kullanımı
extension String {
    func yerDegis(eskiHarf:String,yeniHarf:String) -> String {
        return self.replacingOccurrences(of: eskiHarf, with: yeniHarf)
    }
}

var metin = "buralara yaz günü yağan yağmurların hesabı var mı yok mu bilemem...".yerDegis(eskiHarf: "a", yeniHarf: "i")
print(metin)

