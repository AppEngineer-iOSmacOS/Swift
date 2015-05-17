
//
//1. Создайте структуру студент. Добавьте свойства: имя, фамилия, год рождения, средний бал. Создайте несколько экземпляров этой структуры и заполните их данными. Положите их всех в массив (журнал).
//

struct Student {
    var name: String
    var surname: String
    var dateAge : (day : Int, month: Int, year : Int)
    var average : Int // средний бал
}


let stIlya = Student (name: "Ilya", surname: "Sozinov", dateAge: (day: 3, month: 7, year: 2006), average: 5)
let stTany = Student(name: "Tany", surname: "Lavreniuk", dateAge: (day: 30, month: 8, year: 1980), average: 4)
let stOleg = Student(name: "Oleg", surname: "Balbes", dateAge: (day: 12, month: 11, year: 1985), average: 2)
let stKaty = Student(name: "Katya", surname: "Baklajan", dateAge: (day: 8, month: 3, year: 1990), average: 3)

var journal = [stIlya, stTany, stOleg, stKaty]


//2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого. Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.


func sortJournal (students: [Student]) {

    println("#\tSurname\tName\tBirthday\tAverage")
    for i in 0..<students.count{
        println("\(i+1)\t\(students[i].surname)\t\(students[i].name)\t\(students[i].dateAge)\t\(students[i].average)")
        println("\(students[i].average)")
    }

}

sortJournal(journal)


//3. С помощью функции sorted отсортируйте массив по среднему баллу, по убыванию и распечатайте “журнал”.


sortJournal(sorted(journal) {$0.average > $1.average})












/*
let student1 = (name: "Alex", age:20)
let student2 = (name: "Bob", age:22)

student1.name
student2.name

let student3 = (nam:"Sam", ag:23)

student3.nam





class StudentClass {
    
    var name : String
    var age : Int
    
    init() {
        name = "No Name"
        age = 20
    }
    
    init(name: String, age:Int) {
        self.name = name
        self.age = age
    }
}

struct StudentStruct {
    
    var name : String
    var age : Int
    
}

func addOneYear(student: StudentClass) {
    student.age++
    student
}

func addOneYear(var student: StudentStruct) {
    student.age++
    
    student
}


let stClass1 = StudentClass(name: "Bob", age: 18)

stClass1.name = "Alex"
stClass1.age = 21

var stStruct1 = StudentStruct(name: "Sam", age: 24)

//stStruct1.name = "Sam2"
//stStruct1.age = 21

stStruct1

var stStruct2 = stStruct1

stStruct2.age = 25
stStruct2.name = "Samuel"

stStruct2
stStruct1

var stClass2 = stClass1

stClass2.age = 20
stClass2.name = "AAA"

stClass2
stClass1

stStruct1
addOneYear(stStruct1)
stStruct1

stClass1
addOneYear(stClass1)
stClass1

var arrayStructs = [stStruct1]
arrayStructs[0]
arrayStructs[0].age = 50
arrayStructs[0]
stStruct1

var arrayClasses = [stClass1]
arrayClasses[0]
arrayClasses[0].age = 50
arrayClasses[0]
stClass1

*/

