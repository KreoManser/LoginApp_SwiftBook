//
//  UserProfile.swift
//  LoginApp_SwiftBook
//
//  Created by Сергей Бабич on 18.07.2022.
//

//let user = "User"
//let password = "Password"

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let resume: String
    let status: Status
    let optionalInfo: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Сергей",
            surname: "Бабич",
            photo: "ProfilePhoto",
            resume: """
            Бабич Сергей - родился в 2002 году в городе Междуреченск, Кемеровская область. Учился в 20 лицее(топ-100 россии среди школ) в отобранном классе, после чего поехал в Казань поступать на программную инженерию в ИТИС КФУ. В ИТИСЕ осознал, что хочу заниматься iOS-разработкой и начал изучение языка, через полгода самостоятельного изучения взял курс SwiftBook, чтобы структурировать информацию и узнать еще больше нового, на летней практике увидел огромные плоды проделанной работы, получил отличную характеристику с высшей оценкой за работу и надписью "Пришел с неплохими знаниями iOS-разработки", чем обязан этому замечательному курсу.
            """,
            status: .student,
            optionalInfo: "2 курс"
        )
    }
}

enum Status: String {
    case student = "Студент"
    case worker = "Работник"
    case schooler = "Ученик"
}
