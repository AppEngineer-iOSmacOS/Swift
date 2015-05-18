

// Добавить студенту property «Дата рождения» (пусть это будет еще одна структура, содержащая день, месяц, год) и два computed property: первое — вычисляющее его возраст, второе — вычисляющее, сколько лет он учился (считать, что он учился в школе с 6 лет, если студенту меньше 6 лет — возвращать 0)
//


import Foundation


struct People {
    
    var firstName : String {
        
        willSet {
            println("will set " + newValue + " instead of " + firstName)
        }
        didSet {
            println("did set " + firstName + " instead of " + oldValue)
            
            firstName = firstName.capitalizedString
        }
    }
    
    var lastName : String {
        didSet {
            lastName = lastName.capitalizedString
        }
    }
    
    var fullName : String {
        
        get {
            return firstName + " " + lastName
            }
        set {
            println("fullName wants to be set to " + newValue)
            
            let words = newValue.componentsSeparatedByString(" ")
            
            if words.count > 0 {
                firstName = words[0]
                                }
            
            if words.count > 1 {
                lastName = words[1]
                                }
            }
    }
    
    var data : Data
  
    struct Data {
    
        var day : Int
        var month: Int
        var year : Int
        
        var howOld : Int {
        
            return 2015 - year
                        }
        
        var howScool : Int {
        
            if howOld <= 6 {
                 return 0
                }
            else {
            return howOld - 6
                }
        }
    }
}


var student = People(firstName: "Alex", lastName: "Skutarenko", data: People.Data(day: 3, month: 6, year: 1979))
var student2 = People(firstName: "Михаил", lastName: "Иванов", data: People.Data(day: 12, month: 12, year: 2010))

println("Имя: \(student.firstName), фамилия : \(student.lastName), возраст: \(student.data.howOld) лет, учился \(student.data.howScool) лет назад ")
println("Имя: \(student2.firstName), фамилия : \(student2.lastName), возраст: \(student2.data.howOld) лет, учился \(student2.data.howScool) лет назад ")






