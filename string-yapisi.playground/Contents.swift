import UIKit

// Tanımlama
var str = "lan selam"
let str2 = String("Selam kanki")
let str3 =  """
                selam kardeşim
                bu da çoklu satır
                string yazma olayı
                """


// boş mu?
str.isEmpty

let str4 = "\"\(str)\" deki bu mesaj kimin amq"
str.count

str == str2 ? print("lan esit") : print("dalge geçme lan")

// string parçalama
for i in str {
    print(i,terminator:"-")
}


// insert
str.insert("a", at: str.endIndex)

// remove
str.remove(at: str.startIndex)
print(str)

// contains
str.contains("e") ? print("var kanki") : print("yok len")


// tersine çevirme
var string = "Merhaba canım ben senin amcanım"
var harfler = [Character]()
for i in string {
    harfler.append(i)
}
print(harfler)
for i in stride(from: (harfler.count-1), to: 0,by: -1) {
    print(harfler[i],terminator:"")
}
