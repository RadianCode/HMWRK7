//
//  main.swift
//  homework 7
//
//  Created by Дмитрий Виноградов on 26.08.2021.
//

import Foundation


// 2. Придумать класс, методы которого могут выбрасывать ошибки. Реализуйте несколько throws-функций. Вызовите их и обработайте результат вызова при помощи конструкции try/catch.

// 1. Придумать класс, методы которого могут завершаться неудачей и возвращать либо значение, либо ошибку Error?. Реализовать их вызов и обработать результат метода при помощи конструкции if let, или guard let.


var lowBattery: Bool = true
var alwaysOnDisplay: Bool = true

class appleWatch {
    
    var series: Int
    var alwaysOnDisplay: Bool
    var color: String
    
    init(series: Int, alwaysOnDisplay: Bool, color: String) {
        self.series = series
        self.alwaysOnDisplay = alwaysOnDisplay
        self.color = color
    }
    
    enum appleWatchError: Error {
        case seriesError
        case alwaysOnError
        case wrongColor
        case lowBattery
    }
    
    func checkSeries(series: Int?, alwaysOnDisplay: Bool) throws {
        guard series != nil else {
            throw appleWatchError.seriesError
        }
        
        guard self.alwaysOnDisplay == true else {
            throw appleWatchError.alwaysOnError
        }
    }
    
    
    func testErrorAppleWatch() throws {
        if alwaysOnDisplay {
            throw appleWatchError.alwaysOnError
        }
        
        if lowBattery {
            throw appleWatchError.lowBattery
        }
    }
    
//    do {
//            try testErrorAppleWatch()
//        } catch appleWatchError.lowBattery {
//            print("low battery")
//        } catch appleWatchError.alwaysOnError {
//            print("Display is ON")
//        }
    // тут по чему то блок выдает Expected Declaration, хотя вызвываю я его после функции
}
    
// Я совсем не понял как я могу использоваь guard let если я например хотел бы просто проверить серию эпл вотч. Типа ввел отличную от 1-5 и получил ошибку.


var s1 = appleWatch(series: 10, alwaysOnDisplay: true, color: "Black")
print(s1)

var s2 = appleWatch(series: 5, alwaysOnDisplay: true, color: "White")




