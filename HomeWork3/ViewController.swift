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

        let justDay = 34
        print(whatADay(day: justDay))
        print("========================================================")
        print("========================================================")
        print("String Easy 2")
        let myName = "Dmitriy"
        print("In name \(myName) \(howMuchCharInMyName(name: myName)) charters")
        print("========================================================")
        print("========================================================")
        print("String Easy 3")
        let firstName = "Dmitriy"
        let lastName = "Rusanov"
        print("Username for Dmitriy Rusanov : \(createUsername(firstName: firstName, lastName: lastName))")
        print("========================================================")
        print("========================================================")
        print("String Easy 4")
        let firstAndMiddleName = "Дмитрий Владимирович"
        print(suffixOfMiddleName(firstAndMiddleName: firstAndMiddleName))
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


    // Блок 1 String Easy
    // 2
    /* Создать строку со своим именем. Написать метод который получает это имя и возвращает кол-во символов в строке с вашим именем. Возвращенное значение показать в консоль
     */
    func howMuchCharInMyName (name: String) -> Int {
        return name.characters.count
    }
    // Блок 1 String Easy
    // 3
    /* Написать метод который принимает 2 слова, например имя и фамилию, возвращает юзернейм который имеет буквы нижнего регистра и разделяет имя и фамилию символом “_”
     */
    func createUsername (firstName: String, lastName: String) -> String {
        return firstName.lowercased() + "_" + lastName.lowercased()
    }
    // Блок 1 String Easy
    // 4
    /* Cоздать строку с именем и своим отчеством. Создать метод который проверит его на окончание “ич/на”. Выводит фразу “имеет окончание “ич”” (или “на”).
     Подсказка: в классе написан метод который позволяет проверить на суффикс или префикс, найдите и используйте его
     */
    func suffixOfMiddleName(firstAndMiddleName: String) -> String {
        
        let suffix = String(firstAndMiddleName.characters.suffix(2))
        let newSuffix = suffix.lowercased()
        if newSuffix == "ич" {
            return "Мужик! Окончание: \(suffix)"
        }
        if newSuffix == "на" {
            return "Женщина! Окончание: \(suffix)")
        }
        return "Окончание: '\(suffix)'"
}

}

