/*
1. Создать пять строковых констант
Одни константы это только цифры, другие содержат еще и буквы
Найти сумму всех этих констант приведя их к Int
(Используйте и optional binding и forced unwrapping)
*/
println("\nHome work 1")
let constant1 = "12"
let constant2 = "30"
let constant3 = "24yt"
let constant4 = "2f"
let constant5 = "i8j"
let constant6 = "7"


var converting1 : Int? = constant1.toInt()
var converting2 : Int? = constant2.toInt()
var converting3 : Int? = constant3.toInt()
var converting4 : Int? = constant4.toInt()
var converting5 : Int? = constant5.toInt()
var converting6 : Int? = constant6.toInt()

var sum = 0

 println("\nWas downoad string:\n\(constant1) , \(constant2) , \(constant3) , \(constant4) , \(constant5) , \(constant6)\n")


if converting1 != nil{
 sum = sum + converting1!
    println("data files - OK and = \(constant1)")
} else {
    println("string \(constant1) - not correct data files!")
}


if converting2 != nil{
    sum = sum + converting2!
    println("data files - OK and = \(constant2)")
} else {
    println("string \(constant2) - not correct data files!")
}

if converting3 != nil{
    sum = sum + converting3!
    println("data files - OK and = \(constant3)")
} else {
    println("string \(constant3) - not correct data files!")
}


if converting4 != nil{
    sum = sum + converting4!
    println("data files - OK and = \(constant4)")
} else {
    println("string \(constant4) - not correct data files!")
}


if converting5 != nil{
    sum = sum + converting5!
    println("data files - OK and = \(constant5)")
} else {
    println("string \(constant5) - not correct data files!")
}


if converting6 != nil{
    sum = sum + converting6!
    println("data files - OK and = \(constant6)")
} else {
    println("string \(constant6) - not correct data files!")
}

println("\nTotal correct data files = \(sum)")

/*

2. С сервера к нам приходит тюпл с тремя параметрами:

statusCode, message, errorMessage (число, строка и строка)

в этом тюпле statusCode всегда содержит данные, но сама строка приходит только в одном поле

если statusCode от 200 до 300 исключительно, то выводите message,

в противном случает выводите errorMessage

После этого проделайте тоже самое только без участия statusCode
*/

println("-----------------------------------------------\n\nHome work 2")

var tuple = ("250", "anser", "Error")

var StatusCode = tuple.0.toInt()!
let Message = tuple.1.toInt()
let ErrorMessage = tuple.2.toInt()


if StatusCode <= 200{ println
   println("\n\(tuple.2)")
}
    else if StatusCode >= 300{
        println("\n\(tuple.2)")
} else {
    println("\nCorrect data = \(StatusCode)")
}


if Message != nil && ErrorMessage != nil {
println("\nWow!")
} else {
println("\n\(tuple.2)!!!")
}


/*
3. Создайте 5 тюплов с тремя параметрами:

имя, номер машины, оценка за контрольную

при создании этих тюплов не должно быть никаких данных

после создания каждому студенту установите имя

некоторым установите номер машины

некоторым установите результат контрольной

выведите в консоль:

- имена студента
- есть ли у него машина
- если да, то какой номер
- был ли на контрольной
- если да, то какая оценка



*/

println("-----------------------------------------------\n\nHome work 3\n")

var student1 = (name : String(), nomber : String(), status : Int())
var student2 = (name : String(), nomber : String(), status : Int())
var student3 = (name : String(), nomber : String(), status : Int())
var student4 = (name : String(), nomber : String(), status : Int())
var student5 = (name : String(), nomber : String(), status : Int())
var student6 = (name : String(), nomber : String(), status : Int())

student1.name = "Ivan"
student2.name = "Elena"
student3.name = "Viktor"
student4.name = "Olga"
student5.name = "Anna"
student6.name = "I am"

student1.nomber = "a555bc"
student3.nomber = "r123vsn"
student6.nomber = "o000oo"

student2.status = 5
student4.status = 2
student6.status = 100


println("Student name is \(student1.name)")

if student1.nomber != "" {
    println("Student \(student1.name) have a car and he number is \(student1.nomber)")
}else {
    println("Student \(student1.name) no have auto")
}

if student1.status != Int() {
    println("Student \(student1.name) was a control and received a score \(student1.status)")
}else {
    println("Student \(student1.name) is very bad student because did not go to the standing")
}

println("-----------------------")

println("Student name is \(student2.name)")

if student2.nomber != "" {
    println("Student \(student2.name) have a car and he number is \(student2.nomber)")
}else {
    println("Student \(student2.name) no have auto")
}

if student2.status != Int() {
    println("Student \(student2.name) was a control and received a score \(student2.status)")
}else {
    println("Student \(student2.name) is very bad student because did not go to the standing")
}

println("-----------------------")

println("Student name is \(student3.name)")

if student3.nomber != "" {
    println("Student \(student3.name) have a car and he number is \(student3.nomber)")
}else {
    println("Student \(student3.name) no have auto")
}

if student3.status != Int() {
    println("Student \(student3.name) was a control and received a score \(student3.status)")
}else {
    println("Student \(student3.name) is very bad student because did not go to the standing")
}

println("-----------------------")

println("Student name is \(student4.name)")

if student4.nomber != "" {
    println("Student \(student4.name) have a car and he number is \(student4.nomber)")
}else {
    println("Student \(student4.name) no have auto")
}

if student4.status != Int() {
    println("Student \(student4.name) was a control and received a score \(student4.status)")
}else {
    println("Student \(student4.name) is very bad student because did not go to the standing")
}

println("-----------------------")

println("Student name is \(student5.name)")

if student5.nomber != "" {
    println("Student \(student5.name) have a car and he number is \(student5.nomber)")
}else {
    println("Student \(student5.name) no have auto")
}

if student5.status != Int() {
    println("Student \(student5.name) was a control and received a score \(student5.status)")
}else {
    println("Student \(student5.name) is very bad student because did not go to the standing")
}

println("-----------------------")

println("Student name is \(student6.name)")

if student6.nomber != "" {
    println("Student \(student6.name) have a car and he number is \(student6.nomber)")
}else {
    println("Student \(student6.name) no have auto")
}

if student6.status != Int() {
    println("Student \(student6.name) was a control and received a score \(student6.status)")
}else {
    println("Student \(student6.name) is very bad student because did not go to the standing")
}

println("-----------------------")







/*


var apples : Int? = 5

//apples = nil

if apples == nil {
    println("nil apples")
} else {
    //println(apples)
    
    let a = apples! + 2
}


if var number = apples {
    number = number + 2
}

let age = "60"

if age.toInt() != nil {
    let ageNumber = age.toInt()!
}

if let ageNumber = age.toInt() {
    ageNumber
}


//Int
//Int?
//Int!

var apples2 : Int! = nil

apples2 = 2

//assert(apples2 != nil, "oh no!!!")

apples2 = apples2 + 5

*/












