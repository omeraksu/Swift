import UIKit

protocol Proto1 {
    var degisken: Int { get set }
    
    func metod()
    
    func metod2() -> String
}

class ClassA:Proto1 {
    var degisken: Int = 0
    
    func metod() {
        print("proto metodu")
    }
    
    func metod2() -> String {
        return "döndün mü götoş"
    }
}


var vay = ClassA()
vay.metod()
print(vay.metod2())


// Örnek
protocol Squeezable {
    func howToSqueez()
}

protocol Eatable {
    func howToEat()
}

class Aslan {
    
}

class Tavuk:Eatable {
    func howToEat() {
        print("Mangal yap")
    }
}

class Elma:Eatable,Squeezable {
    func howToEat() {
        print("Dilimle ve ye")
    }
    func howToSqueez() {
        print("Makineden geçir")
    }
}

class AmasyaElmasi:Elma {
    override func howToEat() {
        print("Kıtlayıver")
    }
}

var aslan = Aslan()
var amasyaElma:Elma = AmasyaElmasi()
var elma = Elma()
var tavuk:Eatable = Tavuk()

var nesneler = [aslan,elma,amasyaElma,tavuk] as [Any]

for nesne in nesneler {
    
    if nesne is Eatable {
        (nesne as! Eatable).howToEat()
    }
    
    if nesne is Squeezable {
        (nesne as! Squeezable).howToSqueez()
    }
    print("-----")
}
