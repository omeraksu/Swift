import UIKit

enum Renkler {
    case Beyaz
    case Siyah
    case Bos
}

var renk = Renkler.Beyaz
switch renk {
    case .Beyaz:
        print("beyaz seçili")
    case .Siyah:
        print("siyah seçili")
    default:
        print("bişey seçmedik")
}


// örnek
enum KonserveBoyut {
    case kucuk
    case orta
    case buyuk
}

func fiyatAl(boyut: KonserveBoyut){
    switch boyut {
        case .kucuk:
            print("Fiyatı: \(10 * 14)")
        case .orta:
            print("Fiyatı: \(20 * 14)")
        case .buyuk:
            print("Fiyatı: \(30 * 14)")
    }
}

fiyatAl(boyut: .buyuk)
