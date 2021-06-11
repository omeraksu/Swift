import UIKit

let queue = DispatchQueue(label: "Etiket")

/*
 
queue.sync {
    for i in 0...5 {
        print("Senkron say: \(i)")
    }
}

queue.async {
    for i in 0...5 {
        print("Asenkron say: \(i)")
    }
}

for i in 20...25 {
    print("Main: \(i)")
}

*/

let queue2 = DispatchQueue(label: "Etiket2", qos:DispatchQoS.userInitiated)
let queue3 = DispatchQueue(label: "Etiket3", qos:DispatchQoS.background)

var gecikme:DispatchTimeInterval = .seconds(2)

queue3.async {
    for i in 10...20 {
        print("background: \(i)")
    }
}


queue2.asyncAfter(deadline: .now()+gecikme) {
    for i in 20...30 {
        print("userInitiated: \(i)")
    }
}
