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
        print("Collections Easy 1")
        let animals = ["cats", "dogs", "chimps", "moose"]
        print (deleteAllElementsFromArray(array: animals))
        print("========================================================")
        print("========================================================")
        print("Collections Easy 2")
        let firstArray = [1, 2, 3]
        let secondArray = [4, 5, 6]
        print (addTwoArrays(firstArray: firstArray, secondArray: secondArray))
        print("========================================================")
        print("========================================================")
        print("Collections Easy 3")
        stringArray(array: animals)
        print("========================================================")
        print("========================================================")
        print("Collections Easy 4")
        print(firstAndLastOfArray(array: animals))
        print("========================================================")
        print("========================================================")
        print("Collections Easy 5")
        let dictionary = [
            "Petya": 34,
            "Sveta": 15,
            "Vova": 19
        ]
        print(upgrateDictionary(dictionary: dictionary))
        print("========================================================")
        print("========================================================")
        print("Collections Easy 6")
        let key = "Petya"
        print(deleteElementFromDictionary(dictionary: dictionary, key: key))

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
    // Блок 3 Collections Easy
    // 1
    /* 
     Создать массив со значениями типа Int. Выполнить удаление всех элементов массива
     */
    func deleteAllElementsFromArray(array: Array<Any>) -> Array<Any> {
        var newArray: Array = array
        newArray.removeAll()
        return newArray
    }
    // Блок 3 Collections Easy
    // 2
    /*
     Создать 2 массива со значениями типа Целое. Сделать соединение данных массивов. Результат вывести в консоль.
     */
    func addTwoArrays(firstArray: Array<Int>, secondArray: Array<Int>) -> Array<Int> {
        let newArray = firstArray + secondArray
        return newArray
    }
    // Блок 3 Collections Easy
    // 3
    /*
     Создать массив с любыми значениями типа строка. Создать метод который будет принимать как аргумент массив. Метод должен выводить в консоль элементы массива (по одному в одной строке)
     */
    func stringArray(array: Array<String>) {
        for element in array {
            print(element)
        }
    }
    // Блок 3 Collections Easy
    // 4
    /*
     Создать массив с любыми значениями типа строка. Создать метод который будет принимать как аргумент массив. Метод должен возвращать массив который состоит из первого и последнего элемента массива, который был параметром
     */
    func firstAndLastOfArray(array: Array<String>) -> Array<String> {
        let newArray: Array<String> = [array.first!, array.last!]
        return newArray
    }
    // Блок 3 Collections Easy
    // 5
    /*
    Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары).
    Добавить в данный массив еще 2 новых элемента.
    */
    func upgrateDictionary(dictionary: Dictionary<String, Int>) -> Dictionary<String, Int> {
        var dictionaryNew = dictionary
        dictionaryNew["Dima"] = 18
        dictionaryNew["Oleg"] = 20
        return dictionaryNew
    }
    // Блок 3 Collections Easy
    // 5
    /*
    Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары).
    Создать метод который будет иметь 2 параметра: словарь (типа “Строка : Целое”) и ключ типа Строка. Данный метод должен удалить из полученного (как первый аргумент) словаря элемент ключ которого был передан (как второй аргумент).
    */
    func deleteElementFromDictionary(dictionary: Dictionary<String, Int>, key: String) -> Dictionary<String, Int> {
        var newDictionary = dictionary
        newDictionary.removeValue(forKey: key)
        return newDictionary
    }


}

