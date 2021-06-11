import UIKit


// kalıtım
class Arac {
    var renk: String?
    var vites: String?
    
    init(renk: String, vites:String) {
        self.renk = renk
        self.vites = vites
    }
}

class Araba:Arac {
    var kasaTipi:String?
    
    init(kasaTipi:String,renk:String,vites:String) {
        
        self.kasaTipi = kasaTipi
        
        super.init(renk: renk, vites: vites) // superclass'a referans verdik
    }
}

class Nissan:Araba {
    var model:Int?
    
    init(model: Int,kasaTipi:String,renk:String,vites:String) {
        
        self.model = model
        
        super.init(kasaTipi: kasaTipi, renk: renk, vites: vites)
    }
}

var arabam = Nissan(model: 2014, kasaTipi: "Taksi", renk: "Mavi", vites: "otomatik")
var arac = Arac(renk: "Kırmızı", vites: "Manuel")


// Ornek
class Ev {
    var pencere:Int?
    
    init(pencere: Int) {
        self.pencere = pencere
    }
}

class Saray:Ev {
    var kuleSayi:Int?
    
    init(kuleSayi:Int,pencere:Int) {
        self.kuleSayi = kuleSayi
        super.init(pencere: pencere)
    }
}

class Villa:Ev {
    var garaj:Bool?
    
    init(garaj:Bool,pencere:Int) {
        self.garaj = garaj
        super.init(pencere: pencere)
    }
}

let villam = Villa(garaj: true, pencere: 14)
let saray = Saray(kuleSayi: 4, pencere: 44)

print(villam.garaj!)
print(saray.kuleSayi!)
