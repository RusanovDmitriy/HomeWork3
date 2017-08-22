//
//  ViewController.swift
//  HomeWork3
//
//  Created by Rusanov Dima on 22.08.17.
//  Copyright © 2017 Rusanov Dima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let day = 34
        print(whatADay(day: day))
        print("========================================================")
        print("========================================================")
        print("String Hard 1")
        let name = "DmitriyRusanov"
        print("\(createApartWords(name: name))")
        print("========================================================")
        print("========================================================")
        print("String Hard 2")
        let string = "Hello, world!"
        print(mirrorString(string: string))
        print("========================================================")
        print("========================================================")
        print("String Hard 3")
        let number = "239923934"
        print(addComma(number: number))
        print("========================================================")
        print("========================================================")
        print("String Hard 4")
        let password = "1qaSw23ed"
        print("\(password) - \(goodPassword(password: password))")

    }
    // Блок 0 Самостоятельная работа
    /* Написать метод, в который передается номер дня (1-7) и в консоль выводится день недели (Понед - Воскр)
    Примечание: кто сделал на уроке, может не делать
    Усовершенствовать предыдущий метод так, что передав 8 выведется снова же Понедельник, а передав 9 выведется Вторник, 14 - воскресенье, 16 - вторник и тд для любых чисел.
    Примечание: кто сделал на уроке, может не делать
    */
    func whatADay(day: Int) -> String {
        let newDay = day / 7
        switch newDay {
        case 1:
            return "Понедельник"
        case 2:
            return "Вторник"
        case 3:
            return "Среда"
        case 4:
            return "Четверг"
        case 5:
            return "Пятница"
        case 6:
            return "Суббота"
        case 7:
            return "Воскресенье"
        default:
            return "You failed"
        }
    }
    // Блок 2 String Hard
    // 1
    /* Создать метод который будет принимать строку где слитно написано Ваши ИмяФамилия “TungFam" разбить на две отдельных строки из предыдущей создать третью где они обе будут разделены пробелом
     str1 = “Tung”
     str2 = “Fam”
     str3 = “Tung Fam"
     */
    func createApartWords(name: String) -> String {
        var firstName :String = String(name.characters.prefix(1))
        var secondName = name
        secondName.remove(at: secondName.startIndex)
        for character in secondName.characters {
            let str = String(character)
            if str.lowercased() == str {
                firstName += str
                secondName.remove(at: secondName.startIndex)
            }else {
                break
            }
        }
        return firstName + "_" + secondName

    }
    // Блок 2 String Hard
    // 2
    /* Создать метод который принимает как аргумент строку. Метод выводит строку зеркально, например Ось -> ьсО, Привет -> тевирП. не используя reverse (сделать алгоритм самому посимвольно)

     */
    func mirrorString(string: String) -> String {
        var newString = ""
        for character in string.characters {
            newString = String(character) + newString
        }
        return newString
    }
    // Блок 2 String Hard
    // 3
    /* добавить запятые в строку как их расставляет калькулятор
     1234567 -> 1,234,567
     12345 -> 12,345
     (не использовать встроенный метод для применения формата)
     */
    func addComma(number: String) -> String {
        let length : Int = number.characters.count
        var newNumber = ""
        var counter = 1

        for character in number.characters {
            newNumber += String(character)
            if (counter % 3 == (length % 3)) && (counter != length) {
                newNumber += ","
            }
            counter += 1
            if counter > length {
                break
            }
        }
        return newNumber
    }
    // Блок 2 String Hard
    // 4
    /* проверить пароль на надежность от 1 до 5
     a) если пароль содержит числа +1
     b) символы верхнего регистра +1
     c) символы нижнего регистра +1
     d) спец символы +1
     e) если длина пароля 8 или более символов +1
     */
    func goodPassword(password: String) -> String {
        var counter :Int = 0
        var strangeOfPassword = ""
        //a
        let characterSetNumbers = CharacterSet(charactersIn: "0123456789")
         if password.rangeOfCharacter(from: characterSetNumbers) != nil {
            counter += 1
            strangeOfPassword += " a)"
        }
        //b
        let characterSetUpper = CharacterSet(charactersIn: "ABCDEFGHIGLMNOPQRSTUVWXYZ")
        if password.rangeOfCharacter(from: characterSetUpper) != nil {
            counter += 1
            strangeOfPassword += " b)"
        }
        //c
        let characterSetLower = CharacterSet(charactersIn: "abcdefghigklmnopqrstuvwxyz")
        if password.rangeOfCharacter(from: characterSetLower) != nil {
            counter += 1
            strangeOfPassword += " c)"
        }
        //d
        let characterSetAll = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")
        if password.rangeOfCharacter(from: characterSetAll.inverted) != nil {
            counter += 1
            strangeOfPassword += " d)"
        }

        //e
        let length: Int = password.characters.count
        if length >= 8 {
            counter += 1
            strangeOfPassword += " e)"
        }

        return  "\(counter)\(strangeOfPassword)"
    }


}

