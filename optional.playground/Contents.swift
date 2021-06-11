import UIKit

// Optional
var str:String?

str = "ömer"

if str != nil {
    print(str)
} else {
    print("buralar nil")
}

// unwrapping
if str != nil {
    print(str!) // ! ile unwrapping yapıyoruz yani optional olan veriye garanti veriyoruz
} else {
    print("buralar nil")
}


// Optional Binding - if let/var -
if let temp = str {
    print(temp) // otomatik unwrapping yapıyor
} else {
    print("değer nil")
}
