import UIKit

struct Urun {
    var renk:String?
    var kapasite:Int?
}

var laptop = Urun()
laptop.renk = "kirmizi"
laptop.kapasite = 1024

if let temp = laptop.renk {
    print(temp)
}

class Araba {
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    func calistir(){
        calisiyorMu = true
    }
    
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(kacKm:Int){
        hiz! += kacKm
    }
    
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    }
    
    func bilgi(){
        print("       ")
        print("Renk         : \(renk!)")
        print("Hız          : \(hiz!)")
        print("Çalışması    : \(calisiyorMu!)")
    }

}

var bmw = Araba()
bmw.renk = "Mavi"
bmw.hiz = 200
bmw.calistir()
bmw.bilgi()
bmw.hizlan(kacKm: 59)
bmw.bilgi()


struct Otobus {
    var kapasite:Int?
    var kalkis:String?
    var varis:String?
    var mevcutYolcu:Int?
    
    mutating func yolcuAl(yolcu:Int){
        mevcutYolcu! += yolcu
    }
    
    mutating func yolcuIndir(yolcu:Int){
        mevcutYolcu! -= yolcu
    }
    
    func bilgiAl(){
        print("       ")
        print("Kapasite     : \(kapasite!)")
        print("Kalkış       : \(kalkis!)")
        print("Varış        : \(varis!)")
        print("Mevcut       : \(mevcutYolcu!)")
    }
}

var kamilKoc = Otobus()
kamilKoc.kapasite = 59
kamilKoc.kalkis = "Bursa"
kamilKoc.varis = "Ankara"
kamilKoc.mevcutYolcu = 40
kamilKoc.yolcuAl(yolcu: 3)
kamilKoc.yolcuIndir(yolcu: 6)
kamilKoc.bilgiAl()
