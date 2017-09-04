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
        var newArray: [String] = []
        if let nonOptionalFirstElement = array.first {
            newArray.append(nonOptionalFirstElement)
        }
        if let nonOptionalLastElement = array.last {
            newArray.append(nonOptionalLastElement)
        }
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

