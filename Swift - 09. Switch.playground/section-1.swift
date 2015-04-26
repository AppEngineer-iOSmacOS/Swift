


/*

1. Создать строку произвольного текста, минимум 200 символов. Используя цикл и оператор свитч посчитать количество гласных, согласных, цифр и символов.

*/



let srting = "создать строку произвольного текста, минимум 200 символов. используя цикл и оператор свитч посчитать количество гласных, согласных, цифр и символов."

var vowels = 0        // гласные
var consonants = 0   // согласные
var numbers = 0      // цифры
var symbols = 0     // буквы


for i in srting {
    
    switch i {

    case "а", "е", "и", "о", "у", "ы", "э", "ю", "я" : vowels++
        println(" in string - \(vowels) vowels\n в строке - \(vowels) гласных")

    case "б", "в", "г", "д", "ж", "з", "к", "л", "м", "н", "п", "р", "с", "т", "ф", "х", "ц", "ч", "ш", "щ", "ь", "ъ" : consonants++
       println(" in string - \(consonants) consonants\n в строке - \(consonants) согласных")
        
    case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0" : numbers++
        println(" in string - \(numbers) numbers\n в строке - \(numbers) цифр(ы)")
        
        
        default : break
    }
    
    symbols = vowels+consonants+numbers
    println(" in string - \(symbols) symbols\n в строке - \(symbols) символов")
}

/*

2. Создайте свитч который принимает возраст человека и выводит описание жизненного этапа

*/

let age = 33

switch age {

    case 0...12 : println("baby\nребенок")
    case _ where age > 12 && age < 16 : println("schoolman\n школьник")
    case 17...21 : println("student\nстудент")
    case _ where age >= 22 && age <= 50 : println("workman\n работающий")
    case 51...150 : println("senior citizen\n пожилой человек")
    case _ where age >= 151 : println("dead\n кощей")
   
    
default:break
}


/*

3. У вас есть имя отчество и фамилия студента (русские буквы). 
Имя начинается с А или О, то обращайтесь к студенту по имени,
если же нет, то если у него отчество начинается на В или Д, то обращайтесь к нему по имени и отчеству, 
если же опять нет, то в случае если фамилия начинается с Е или З, то обращайтесь к нему только по фамилии. 
В противном случае обращайтесь к нему по полному имени.

*/


var studentNameMiddleSurname = (String(), String(), String())

studentNameMiddleSurname.0 = "Виктор"
studentNameMiddleSurname.1 = "Владимирович"
studentNameMiddleSurname.2 = "Петров"

switch studentNameMiddleSurname {
    
    case let (name, _, _) where  name.hasPrefix("А") || name.hasPrefix("О") : println(studentNameMiddleSurname.0)
    case let (_, middle, _) where  middle.hasPrefix("В") || middle.hasPrefix("Д") : println("\(studentNameMiddleSurname.0) \(studentNameMiddleSurname.1)")
    case let (_, _, surname) where  surname.hasPrefix("Е") || surname.hasPrefix("З") : println(studentNameMiddleSurname.2)
    case let (_, _, _) : println("\(studentNameMiddleSurname.0) \(studentNameMiddleSurname.1) \(studentNameMiddleSurname.2)")
    
default : break
}


/*
4. Представьте что вы играете в морской бои и у вас осталось некоторое количество кораблей на поле 10Х10 
(можно буквы и цифры, а можно только цифры). 

Вы должны создать свитч, который примет тюпл с координатой и выдаст один из вариантов: мимо, ранил, убил.

*/


let ship1 = (x:"A", y:1)
let ship2 = [(x:"B", y:1), (x:"B", y:2), (x:"B", y:3)]

let gun = (x:"B", y:1)

switch gun {

    case _ where gun.x == "A" && gun.y == 1 : println("Убил")
    case _ where gun.x == "A" && gun.y == 1 || gun.x == "A" && gun.y == 2 || gun.x == "B" && gun.y == 1 || gun.x == "B" && gun.y == 2 || gun.x == "B" && gun.y == 3: println("Ранил")
    case _ : println("Мимо")

default : break
}

/*
var age = 67
var name = "Alex"


switch age {
    case 0...16:
        println("школота")
        println("dsa")
    
    case 17...21:
        println("студент")
    
    case 22...50: break
    
    case 52:
        println("не сработало!")
    
    case 51, 56, 57, 60:
        println("сработало!")
    
    default: break
}

switch name {
    case "Alex" where age < 50:
        println("hi buddy!")
    case "Alex" where age >= 50:
        println("I don't know you")
    default:
    break
}
/*
var optional : Int? = 5

if let optional = optional {
    println("\(optional) != nil")
}*/

let tuple = (name, age)

switch tuple {
    
    case ("Alex", 60): println("hi Alex 60")
    case ("Alex", 59): println("hi Alex 59")
    
    case (_, let number) where number >= 65 && number <= 70:
        println("hi old man")
    
    case ("Alex", _): println("hi Alex")
    
    default: break
}

let point = (5,-6)

switch point {
    
    case let (x,y) where x == y:
        println("x == y")
    case let (x,y) where x == -y:
        println("x == -y")
    case let (_,y) where y < 0:
        println("y < 0")
    
    default: break
}

let array : [Printable] = [5, 5.4, Float(5.4)]

switch array[2] {
    case _ as Int: println("Int")
    case _ as Float: println("Float")
    case _ as Double: println("Double")
    
    default: break
}

*/
