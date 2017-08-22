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



}

