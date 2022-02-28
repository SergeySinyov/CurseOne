//
//  main.swift
//  CurseOne
//
//  Created by Сергей Синёв on 19.02.2022.
//

import Foundation

enum AppleColor {
    case red
    case green
    case yelow
}

protocol SizeBasket{
    var numberOfApple: Int { get set}

}

struct Apple: SizeBasket {
    var color: AppleColor
    var numberOfApple: Int
}

extension Apple: CustomStringConvertible{
    var description: String {
        return "In basket \(numberOfApple)  \(color) apple"
    }
}


struct Queue<T: SizeBasket> {
    private var elements: [T] = []

    mutating func enqueue(element: T) {
        elements.append(element)
    }
    mutating func dequeue()->T? {
        return elements.removeLast()
    }

    var sizeOfBasket : Int{
        var numberOfApple = 0
        for element in elements {
            numberOfApple += element.numberOfApple
        }
        return numberOfApple
    }
    subscript (elements: Int ...) -> Int{
        var numberOfApple = 0
        for index in elements where index < self.elements.count {
            numberOfApple += self.elements[index].numberOfApple
        }
        return numberOfApple
    }

}

extension Queue{
    func filtred(predicate: (T) -> Bool) -> [T] {
        var myArray = [T]()
        for elem in elements {
            if predicate(elem){
                myArray.append(elem)
            }
        }
        return myArray
    }
}


var basketOfApple = Queue<Apple>()

basketOfApple.enqueue(element: Apple(color: .green, numberOfApple: 6))
basketOfApple.enqueue(element: Apple(color: .red, numberOfApple: 20))
basketOfApple.enqueue(element: Apple(color: .yelow, numberOfApple: 5))



let bigBasketOfApple = basketOfApple.filtred(predicate: {$0.numberOfApple > 10})
print(bigBasketOfApple)





