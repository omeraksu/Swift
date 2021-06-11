import UIKit

// Guard
func kisiTanimi(ad:String){
    if ad == "Ahmet" {
        print("Hoşgeldin amet")
    } else {
        print("yanlış kişi")
    }
}

kisiTanimi(ad: "Ahmet")
kisiTanimi(ad: "Ali")

func kisiTanimi2(ad:String){
    guard ad == "Ahmet" else {
        print("Git lan burdan")
        return
    }
    print("Hoş geldin bebişim")
}

kisiTanimi2(ad: "Ahmet")
kisiTanimi2(ad: "Ali")



// if versiyon
func buyukHarf(kelime:String?){
    if let temp = kelime {
        print(temp.uppercased())
    } else {
        print("str nildir")
        return
    }

}
buyukHarf(kelime: "LAn")
buyukHarf(kelime: "awdawdawdw")
buyukHarf(kelime: nil)

// guard version
func buyukHarf2(str:String?) {
    guard let temp = str, temp.count > 0 else {
        print("Hatamız var")
        return
    }
    print(temp.uppercased())
}
buyukHarf2(str: nil)
buyukHarf2(str: "")
buyukHarf2(str: "ömer")
