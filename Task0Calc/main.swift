//
//  main.swift
//  Task0Calc
//
//  Created by neoviso on 8/22/22.
//

import Foundation

var mathString: String?
var a: Int?
var b: Int?

let letters = CharacterSet.letters
let number = CharacterSet.decimalDigits

var numbers: [String.SubSequence]?

repeat {
    print("Введите математический пример (ex. -12 + 5): ")
    mathString = readLine()
    if let mathString = mathString {
        numbers = mathString.split(separator: " ")
    }
    
} while mathString == nil || mathString == "" || mathString!.rangeOfCharacter(from: letters) != nil || mathString!.rangeOfCharacter(from: number) == nil || !mathString!.contains(" ") || numbers!.count > 4 || Int(numbers!.first!) == nil || Int(numbers!.last!) == nil
    
if let numbers = numbers {
    
    let a1 = numbers.firstIndex(where: { (Double($0) != nil) == true})
    let b1 = numbers.lastIndex(where: { (Double($0) != nil) == true})
    
    for index in numbers.indices {
        for item in numbers {
            
            if index == a1 {
                a = Int(numbers[index])!
            } else if index == b1 {
                b = Int(numbers[index])!
            }
            
            guard let a = a, let b =  b  else { break }
            
            switch String(item) {
            case "+":
                    print("Результат операции \(a) + \(b) = " + String(a + b))
            case "-":
                    print("Результат операции \(a) + \(b) = " + String(a - b))
            case "*":
                    print("Результат операции \(a) + \(b) = " + String(a * b))
            case "/":
                    print("Результат операции \(a) + \(b) = " + String(a / b))
            default:
                break
            }
        }
    }
}

/*var pointMenu: String?
var a: String?
var b: String?

repeat {
    print("Привет, это программа калькулятор! Выберите пункт меню: ")
    print("1. Ввести числа для операций")
    print("2. +")
    print("3. -")
    print("4. *")
    print("5. /")
    print("6. Выход")

    pointMenu = readLine()
    
    if let pointMenu = Int(pointMenu!) {
        switch pointMenu {
        case 1:
            repeat {
                print("Введите первое число: ")
                a = readLine()
                print("Введите второе число: ")
                b = readLine()
            } while Int(a!) == nil || Int(b!) == nil
            
        case 2 where a != nil || b != nil:
                /*if let a = Int(a!), let b =  Int(b!) {
                    print("Результат операции \(a) + \(b) = " + String(a + b))
                }*/
                print("Результат операции \(a!) + \(b!) = " + String(Int(a!)! + Int(b!)!))

        case 3 where a != nil || b != nil:
                print("Результат операции \(a!) - \(b!) = " + String(Int(a!)! - Int(b!)!))
            
        case 4 where a != nil || b != nil:
                print("Результат операции \(a!) * \(b!) = " + String(Int(a!)! * Int(b!)!))
        
        case 5 where a != nil || b != nil:
            Int(b!)! != 0 ? print("Результат операции \(a!) / \(b!) = " + String(Int(a!)! / Int(b!)!)) : print("Делить \(Int(a!)!) на 0 нельзя!")
            
        case 6:
            break
            
        default:
            print("Неверный пункт меню!")
        }
    }
} while Int(pointMenu!) != 6*/
