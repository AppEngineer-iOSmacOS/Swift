// Tuples


/*
1. Создать тюпл с тремя параметрами:

- максимальное количество отжиманий
- максимальное количество подтягиваний
- максимальное количество приседаний

Заполните его своими достижениями :)

Распечатайте его через println()

2. Также сделайте три отдельных вывода в консоль для каждого параметра

При том одни значения доставайте по индексу, а другие по параметру

3. Создайте такой же тюпл для другого человека (супруги или друга)

с такими же параметрами, но с другими значениями

Используйте промежуточную переменную чтобы поменять соответствующие значения

первого тюпла на значения второго

4. Создайте третий тюпл с теми же параметрами, но значения это разница

между соответствующими значениями первого и второго тюплов

Результат выведите в консоль
*/


let mySport = (10, 20, 35)
let myOtjim = mySport.0
let myPodtyag = mySport.1
let myPrised = mySport.2

println("Мои результаты в спорте таковы:\nОтжимания: \(myOtjim)\nПодтягивания: \(myPodtyag)\nПриседания: \(myPrised)\n")
println("Другой вывод\n\nМои результаты в спорте таковы:\nОтжимания: \(mySport.0)\nПодтягивания: \(mySport.1)\nПриседания: \(mySport.2)\n")

let sheSport = (sheOtjim:8, shePodtyag:7, shePrised:20)

println("Её результаты в спорте таковы:\nОтжимания: \(sheSport.sheOtjim)\nПодтягивания: \(sheSport.shePodtyag)\nПриседания: \(sheSport.shePrised)\n")

var othetSport = mySport
othetSport = sheSport

println("Внезапно мои результаты в спорте стали как у нее:\nОтжимания: \(othetSport.0)\nПодтягивания: \(othetSport.1)\nПриседания: \(othetSport.2)\n")

let x = myOtjim - sheSport.sheOtjim
let y = myPodtyag - sheSport.shePodtyag
let z = myPrised - sheSport.shePrised

let raznica = (x, y, z)
let raznicaOtjim = raznica.0
let raznicaPodtyag = raznica.1
let raznicaPrised = raznica.2

println("Но потом я вернул свои результаты обратно и сравнил нас\n")
println("Я отжимаюсь больше Её на \(raznicaOtjim) раза\nПодтягиваюсь больше Eё на \(raznicaPodtyag) раз\nПриседаю болше на \(raznicaPrised) раз")




/*
//let simpleTuple : (Int, String, Bool, Double) = (1, "Hello", true, 2.4)
let simpleTuple = (1, "Hello", true, 2.4)

let (number, greatings, check, decimal) = simpleTuple

number
greatings
check
decimal

let (_, _, check2, _) = simpleTuple
check2

simpleTuple.0
simpleTuple.1
simpleTuple.2
simpleTuple.3

var tuple = (index:1, phrase:"Hello", registered:true, latency:2.4)
tuple.0
tuple.1
tuple.2
tuple.3

tuple.index
tuple.phrase
tuple.registered
tuple.latency

// change tuple's value
tuple.index = 2

/*
let a = (x:1,y:2)
var b = (x:2,z:3)

b = a
*/

/*
let red = "red"
let green = "green"
let blue = "blue"
*/

let (red, green, blue) = ("red", "green", "blue")

let p = (x:5.0,y:5.5)

red
green
blue


let totalNumber = 5
let merchantName = "Alex"

println("\(totalNumber) \(merchantName)")
println((totalNumber, merchantName))
println(simpleTuple)



*/







