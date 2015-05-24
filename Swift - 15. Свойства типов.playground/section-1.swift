
/*1. Создать структуру “Описание файла” содержащую свойства:
- путь к файлу
- имя файла
- максимальный размер файла на диске
- тип файла (скрытый или нет)
- содержимое файла (можно просто симулировать контент)

Главная задача - это использовать правильные свойства там, где нужно, чтобы не пришлось хранить одни и те же данные в разных местах и т.д. и т.п.
*/



struct SittingsFile {
    
    static let maxSizeFile = 100
    
    var name : String
    let pathDir : String
    var isHidden : Bool
    
    var path : String {
    
            return pathDir + "/" + name
    }
    
    var content : String {
        
        get {
            return "No content"
        }
    }
    
    
     var size : Int {
        
        didSet {
            if self.size > SittingsFile.maxSizeFile {
                return size = oldValue
            }
        }
    }


    init(name: String, pathDir: String, isHidden: Bool, size: Int){
        self.name = name
        self.pathDir = pathDir
        self.isHidden = isHidden
        self.size = size > SittingsFile.maxSizeFile ? SittingsFile.maxSizeFile : size
    }
}
    


var test1 = SittingsFile(name: "файл-тест", pathDir: "osx/folder", isHidden: true, size: 50)
var test2 = SittingsFile(name: "файл-тест", pathDir: "osx/folder", isHidden: true, size: 400)

test1.name
test1.path
test1.pathDir
test1.content
test1.isHidden
test1.size
println(test1.size)

test2.size




        
//println("имя файла: \(test.name), размер файла: \(test.fileSize) мб , скрытый или нет: \(test.isHidden) , контент файла: \(test.content)")

/*
2. Создайте энум, который будет представлять некую цветовую гамму. Этот энум должен быть типа Int и как raw значение должен иметь соответствующее 3 байтное представление цвета. Добавьте в этот энум 3 свойства типа: количество цветов в гамме, начальный цвет и конечный цвет.

*/

enum Colors : Int {
    
    case Black = 0x000000
    case White = 0xffffff
    case Red = 0xff0000
    case Green = 0x00ff00
    case Blue = 0x0000ff

static let firstColor = Colors.Black
static let lastColor = Colors.White

static var count : Int {
    return lastColor.hashValue + 1
    }

}

Colors.lastColor.rawValue
Colors.count


/*
3. Создайте класс человек, который будет содержать имя, фамилию, возраст, рост и вес. Добавьте несколько свойств непосредственно этому классу чтобы контролировать:

- минимальную и максимальную длину имени и фамилии
- самое интересное, создайте свойство, которое будет содержать количество созданных объектов этого класса
*/

let maxName = 50

class Human {
    
    
//    - минимальный и максимальный возраст каждого объекта
    class var minAge : Int {
        return 1
    }
    
    class var maxAge : Int {
        return 100
    }
    
    var age : Int {
        didSet {
            if age > Human.maxAge || age < Human.minAge {
                age = oldValue
            }
        }
    }
    
//- минимально возможный рост

    class var minGrowth: Int {
        return 150
    }
    
    var growth : Int {
        didSet {
            if growth < Human.minGrowth {
                growth = oldValue
            }
        }
    }

    
//- минимально возможный  вес
    class var minWeight: Int {
        return 45
    }
    
    
    var weight : Int {
        didSet {
            if weight < Human.minWeight {
                weight = oldValue
            }
        }
    }
    
//    длина имени
    
    var name : String {
    
        didSet {
            if count(name) > maxName {
                name = oldValue
            }
        }
    }
    
    

    static var totalHuman = 0
    
    init(name: String, age : Int, growth: Int, weight: Int) {
        self.name = name
        self.age = age < Human.minAge ? Human.minAge: age ?? age > Human.maxAge ? Human.maxAge: age
        self.growth = growth < Human.minGrowth ? Human.minGrowth: growth
        self.weight = weight < Human.minWeight ? Human.minWeight: weight
        
// количество созданных объектов этого класса
        
        Human.totalHuman++
    }


}


let human1 = Human(name: "Pavel", age: 1000, growth: 78, weight: 80)
let human2 = Human(name: "Angela", age: 0, growth: 15, weight: 20)
let human3 = Human(name: "Natasha", age: 16, growth: 180, weight: 40)



human1.age

human2.age
human2.growth
human2.weight
human2.weight
human2.name = "Vasayadfdsfdfsdfsdfsdfsdfsdfsdfsdfsdfsdfscvbvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb"
human2.name = "Olga"


Human.totalHuman





/*

let MaxNameLength = 50

class Human {
    
    var name : String {
        didSet {
            if count(name) > MaxNameLength {
                name = oldValue
            }
        }
    }
    
    lazy var storyOfMyLife : String! = "This is a story of my entire life..."
    
    class var maxAge : Int {
        return 100
    }
    
    var age : Int {
        didSet {
            if age > Human.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String, age : Int) {
        self.name = name
        self.age = age
    }
}

enum Direction {
    
    static let enumDescription = "Directions in the game"
    
    case Left
    case Right
    case Top
    case Bottom
    
    var isVertical : Bool {
        return self == .Top || self == .Bottom
    }
    
    var isHorizontal : Bool {
        return !isVertical
    }
}

let d = Direction.Right

d.isVertical
d.isHorizontal



Direction.enumDescription

struct Cat {
    
    var name : String {
        didSet {
            if count(name) > MaxNameLength {
                name = oldValue
            }
        }
    }
    
    static let maxAge = 20
    
    static var totalCats = 0
    
    var age : Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        
        Cat.totalCats++
    }
}



let human = Human(name: "Peter", age: 40)

human
human.storyOfMyLife
human

var cat = Cat(name: "Whiten", age: 10)

human.age = 1000
cat.age = 50

Cat.totalCats

let cat1 = Cat(name: "Whiten1", age: 10)
let cat2 = Cat(name: "Whiten2", age: 10)

Cat.totalCats

cat.name = "dahsdisah idsahidasi"

*/
