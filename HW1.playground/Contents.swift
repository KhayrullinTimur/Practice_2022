import Cocoa
import Darwin
import Foundation

var greeting = "Hello, playground"

protocol HomeworkService {
    // Функция деления с остатком, должна вернуть в первой части результат деления, во второй части остаток.
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int)

    // Функция должна вернуть числа фибоначчи.
    func fibonacci(n: Int) -> [Int]

    // Функция должна выполнить сортировку пузырьком.
    func sort(rawArray: [Int]) -> [Int]

    // Функция должна преобразовать массив строк в массив первых символов строки.
    func firstLetter(strings: [String]) -> [Character]

    // Функция должна отфильтровать массив по условию, которое приходит в параметре `condition`. (Нельзя юзать `filter` у `Array`)
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int]
    
}

struct HW1 {
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int) {
        return (x/y, x%y)
    }
    
    func fibonacci(n: Int) -> [Int] {
        if n == 0 {
            return [0]
        }
       if n == 1 {
           return [1]
        }
        else {
            var result = [0,1]
            for i in 2...n {
                result.append(result[i-1] + result[i-2])
            }
            return result
        }
    }
    
    func sort(rawArray: [Int]) -> [Int] {
        var rawArray = rawArray
        for i in 0..<rawArray.count {
            let index = (rawArray.count - 1) - i
            for j in 0..<index {
                
                let number = rawArray[j]
                let nextNumber = rawArray[j+1]
                
                if number > nextNumber {
                    rawArray[j] = nextNumber
                    rawArray[j+1] = number
                }
            }
        }
        return rawArray
    }
    
    func firstLetter(strings: [String]) -> [Character] {
        var arrayCharacters: [Character] = []
        
        for elem in strings {
            arrayCharacters.append(elem.first ?? "-")
        }
        return arrayCharacters
    }
    
//    func isEven(number: Int) -> Bool {
//        return number % 2 == 0
//    }
    
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int] {
        var arr: [Int] = []
        for i in array {
            if condition(i) {
                arr.append(i)
                }
            }
        return arr
    }
}

let hw = HW1()

func isEven(number: Int) -> Bool {
    return number % 2 == 0
}

let arr = [4, 1, 3, 2]
let filtered = hw.filter(array: arr, condition: isEven)
print(filtered)


enum Year: Int {
    case Romance = 2010
    case Action = 2020
    case Science = 1995
}

enum BookType {
    case Romance
    case Action
    case Science
}


public struct Rack {
    let type: BookType
    let count: Int
}

public struct Floor {
    let floor: String
    let type: BookType
}

private struct Hall {
    let room: String
    let square: Int
    let count_seats: Int
}


protocol TakingBook {
    func takeBook()
}

protocol TakingNumber {
    func takeNumber()
}


class Human {
    var name: String = ""
    func sayHello() {
        print("Hello, my name is \(name)")
    }
}

class Visitor: Human, TakingBook {
    func takeBook() {
        print("I want to take a book")
    }
    
    override func sayHello() {
        super.sayHello()
        print("I want to read books")
    }
}

class Administrator: Human {

    func Help() {
        print("I'm administrator, how can I help you?")
    }
}

class Garderobshchik: Human, TakingNumber {
    func takeNumber() {
        print("Take a number")
    }
}

class Cleaner: Human {
    func warning() {
        print("Be careful! Don't run!")
    }
}


//var Hum = Administrator()
//
//Hum.name = "Olya"
//
//print(Hum.sayHello())
