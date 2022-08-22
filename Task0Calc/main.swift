//
//  main.swift
//  Task0Calc
//
//  Created by neoviso on 8/22/22.
//

import Foundation

var pointMenu: String?
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
} while Int(pointMenu!) != 6
