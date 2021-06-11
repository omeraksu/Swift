import UIKit

class Personel {
    func iseAlindi() {
        print("personel mutlu")
    }
}

class Mudur:Personel {
    func iseAl(p:Personel) {
        p.iseAlindi()
    }
    func terfiEttir(p:Personel) {
        if p is Ogretmen {
            (p as! Ogretmen).maasArttir()
        }
        if p is Isci {
            print("işçi babam bunlar bunlar ezile")
        }
        
    }
}

class Isci:Personel {
    
}

class Ogretmen:Personel {
    func maasArttir() {
        print("Maaş arttı babam.")
    }
}

var isci:Personel = Isci()
var ogretmen:Personel = Ogretmen()

var mudur = Mudur()

mudur.iseAl(p: ogretmen)
mudur.iseAl(p: isci)

mudur.terfiEttir(p: ogretmen)
mudur.terfiEttir(p: isci)
