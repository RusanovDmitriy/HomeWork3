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
        print("Collections Medium 1")
        let arrayOfString = ["Lenovo", "Asus", "Acer", "HP", "MacBook"]
        let elementOfStringArray = "Acer"
        print("\(elementOfStringArray) is element of array: \(areElementInArray(array: arrayOfString, element: elementOfStringArray))")
        print("========================================================")
        print("========================================================")
        print("Collections Medium 2")
        let markOfStudents = [
            "Dima" : 5,
            "Sasha" : 3,
            "Anna" : 4,
            "Alina" : 5,
            "Andrey" : 2
        ]
        keysOfDictionary(dictionary: markOfStudents)
        valuesOfDictionary(dictionary: markOfStudents)
        print("========================================================")
        print("========================================================")
        print("Collections Medium 3")
        let arrayOfInt = [3, 6, 1, 2, 2, 6, 13, 77, 36]
        print(bubble(array: arrayOfInt))
        print("========================================================")
        print("========================================================")
        print("Collections Medium 4")
        print(createDictionaryOfDictionaries())
        print("========================================================")
        print("========================================================")
        print("Collections Medium 5")
        let keyForLast = "ADay"
        let dictionaryForLAst = createDictionaryOfDictionaries()
        print(returnValueOfDictionary(dictionary: dictionaryForLAst, key: keyForLast))



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
    // Блок 4 Collections medium
    // 1
    /*
     Создать метод который принимает 2 аргумента: массив строк и просто строку. Метод возвращает true или false в зависимости есть ли данный элемент (тот второй аргумент, который строка) в массиве (тот первый аргумент, который массив строк).
     например массив
     let array = [“one”, “two”]
     и если передать в этот метод “one“ то должно вернуть true
     а если передать “three” то должно вернуть false

     */
    func areElementInArray(array: Array<String>, element: String) -> Bool {
        for elementInArray in array {
            if elementInArray == element {
                return true
            }
        }
        return false
    }
    // Блок 4 Collections medium
    // 2
    /*
    метод который выведет все ключи словаря
    метод который выведет все значения словаря
    */
    func keysOfDictionary(dictionary: Dictionary<String, Any>) {
        for key in dictionary.keys {
            print(key)
        }
    }
    func valuesOfDictionary(dictionary: Dictionary<String, Any>) {
        for value in dictionary.values {
            print(value)
        }
    }
    // Блок 4 Collections medium
    // 3
    /*
    сортировка массива не встроенным методом по возрастанию + удалить дубликаты
    Например задается массив [3, 6, 1, 2, 2, 6, 13, 77, 36]
    Результат должен быть [1, 2, 3, 6, 13, 36, 77]
    */
    func bubble(array: Array<Int>) -> Array<Int> {
        var newArray = Array(Set(array))
        for i in (1..<newArray.count).reversed() {
            for j in 0..<i where newArray[j] > newArray[j + 1] {
                swap(&newArray[j], &newArray[j + 1])
            }
        }
        return newArray
    }
    // Блок 4 Collections medium
    // 4
    /*
    Создать словарь внутри которого будет 2 словаря (ключ - строка, значение - словарь). С любыми данными.
    */
    func createDictionaryOfDictionaries() -> Dictionary<String, Dictionary<Int, Int>> {
        let dictionaryOfdictionary :Dictionary<String, Dictionary<Int, Int>> = [
            "ADay" : [1:1, 2:2, 3:3, 4:4, 5:5, 6:6, 7:7],
            "BDay" : [1:8, 2:9, 3:10, 4:11, 5:12, 6:13, 7:14]
        ]
        return dictionaryOfdictionary
    }
    // Блок 4 Collections medium
    // 4
    /*
     Создать словарь внутри которого будет 2 словаря (ключ - строка, значение - словарь). С любыми данными.
     Создать метод который будет принимать как параметры: словарь (такого типа как выше) и строку. Данный метод должен вернуть значение которое хранится внутри элемента ключ которого был передан как аргумент.
     */
    func returnValueOfDictionary(dictionary: Dictionary<String, Dictionary<Int, Int>>, key: String) -> Dictionary<Int, Int> {
        return dictionary[key]!
    }
}

