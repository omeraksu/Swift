import UIKit

class Hayvan {
    func sesCikar() {
        print("sesim yok amq")
    }
}

class Memeli:Hayvan {
    
}

class Kedi:Hayvan {
    override func sesCikar() {
        print("miyav")
    }
}

class Kopek:Hayvan {
    override func sesCikar() {
        print("havv")
    }
}

var h = Hayvan()
var m = Memeli() // memeli kalıtım yaptığından erişebiliyoruz üstteki methoda
m.sesCikar()

var k = Kedi() // override yaptığımızdan dolayı aynı isimdeki methodu kişiselleştirmiş olduk.
k.sesCikar()


// PolyMorphism
var hayvan:Hayvan = Kopek()
hayvan.sesCikar()
