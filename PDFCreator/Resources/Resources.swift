//
//  Resources.swift
//  PDFCreator
//
//  Created by Vadim on 26.06.2023.
//

import Foundation

enum Resources {
    
    enum CVTitles: String {
        case summary = "Summary"
        case workExperience = "Work Experience"
        case skills = "Skills"
        case education = "Education"
    }
    
    enum Summary: String {
        case first = """
        Обладаю аналитическим складом ума, легко структурирую большой объем информации, быстро нахожу аномалии и ошибки. Ориентация на результат - определяю цели в виде ощутимых результатов (измеримые метрики и сроки). Гибкость - меняю свое поведение в соответствии с изменениями в профессиональной сфере или процессах в компании, открыт для обратной связи.
        """
    }
    
    enum WorkExperience: Int {
        
        case oneYear = 0, twoYear, threeYear
        
        var description: String {
            switch self {
            case .oneYear:
                return """
-    Изучение основ языка Swift, Объектно-Ориентированного Программирования,
-    Написание полноценного приложения при помощи фреймворка UIKit
-    Изучение системы контроля версий Git
-    Опыт работы с интерфейсом приложения, а также с промышленной разработкой, хранением данных
-    Работа в команде с другими разработчиками, совместный код-ревью
-    Самостоятельная оценка задач для попадания в дедлайн, анализ ошибок и причин их возникновения
-    Базовый опыт работы со SwiftUI
"""
            case .twoYear:
                return """
-    Создаю приложения различного уровня сложности на платформе iOS по ТЗ на языке Swift: сделал 2 приложения по спортивной тематике: трекер привычек и подсчет подходов и повторений (приложения есть на github);
-    Работаю с Autolayout, верстаю кодом и через storyboard;
-    Работаю по макету в Figma;
-    Использую систему контроля версий Git в работе;
-    Пишу код с помощью архитектурных паттернов (MVC, MVP, MVVM);
"""
            case .threeYear:
                return """
-Умею подключать к приложению сторонние библиотеки с помощью менеджера зависимостей CocoaPods;
-    Читаю техническую документацию к языку Swift;
-    На данный момент активно занимаюсь приложением со стихами “Krash Poems”, а также с недавнего времени занимаюсь разработкой приложения для поиска адвокатов по необходимым критериям пользователя;
-    В ближайшее время планирую продолжать развиваться в сфере iOS-разработки, изучать другие архитектурные паттерны, а также начать активно изучать SwiftUI.
"""
            }
        }
    }
    
    enum Skills: Int {
        case oneYear = 0, twoYear, threeYear
        
        var description: String {
            switch self {
            case .oneYear:
                return """
XCode
UIKit
Playground, Xib
URLSession, Alamofire
UserDefaults, KeyChain
MVC, MVP
OOP, DRY
GCD
"""
            case .twoYear:
                return """
XCode
UIKit
Playground, Xib, Autolayout
URLSession, Alamofire
Realm, UserDefaults, KeyChain
MVC, MVP, MVVM
OOP, SOLID, KISS, DRY
GCD, Operation
"""
            case .threeYear:
                return """
XCode
UIKit, SwiftUI
Playground, Xib, Autolayout, SnapKit
URLSession, Alamofire
CoreData, Realm, UserDefaults, KeyChain
MVC, MVP, MVVM, VIPER
OOP, Design Patterns, SOLID, KISS, DRY
Thread, GCD, Operation
"""
            }
        }
    }
    
    enum Education: String {
        case university = "Московский Государственный Университет Путей Сообщения"
    }
}
