/*1. Выполните задание #1 урока о базовых операторах
только вместо forced unwrapping и optional binding используйте оператор ??

Когда посчитаете сумму, то представьте свое выражение в виде строки
Например: 5 + nil + 2 + 3 + nil = 10

но в первом случае используйте интерполяцию строк, а во втором конкатенацию

2. Поиграйтесь с юникодом и создайте строку из 5 самых классных по вашему мнению символов,
можно использовать составные символы. Посчитайте длину строки методом SWIFT и Obj-C

3. Создайте строку английский алфавит, все буквы малые от a до z

задайте константу - один из символов этого алфавита

Используя цикл for определите под каким индексов в строке находится этот символ

*/

import Foundation

// Задание 1

let constant1 = "12"
let constant2 = "30"
let constant3 = "24yt"
let constant4 = "2f"
let constant5 = "i8j"
let constant6 = "7"


var converting1 : Int? = constant1.toInt() ?? 0
var converting2 : Int? = constant2.toInt() ?? 0
var converting3 : Int? = constant3.toInt() ?? 0
var converting4 : Int? = constant4.toInt() ?? 0
var converting5 : Int? = constant5.toInt() ?? 0
var converting6 : Int? = constant6.toInt() ?? 0

var sum = converting1! + converting2! + converting3! + converting4! + converting5! + converting6!

let n1 : Int! = constant1.toInt()
let n2 : Int! = constant2.toInt()
let n3 : Int! = constant3.toInt()
let n4 : Int! = constant4.toInt()
let n5 : Int! = constant5.toInt()
let n6 : Int! = constant6.toInt()

//   Интерполяция строк

println("\(n1) + \(n2) + \(n3) + \(n4) + \(n5) + \(n6)  = \(sum)")

//  Конкатенация строк и символов

println(" \(n1) + \(n2) + nil + nil + nil + \(n6) = \(40 + 9)")

// Задание 3

let abc = "qwertyuiopasdfghjklzxcvbnm"
let char : Character = "r"


(abc as NSString).length

var i = 0
for const in abc {
    i++
        if char == const {
            println(i)
    }
}




/*


//var str = String()
var str = "c"

str = str + "a"
str += "b"

/*
var a = 5
var b = a

++a
b
*/

var str1 = "a"
var str2 = str1

str1
str2

//str1 = ""

str1
str2


str1.isEmpty

let char1 : Character = "x"

for c in "Hello world!" {
    println(c)
}

str1.append(char1)

//(str1 as NSString).length
//NSString(string: str1).length



let heart = "\u{1F496}"

let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "e\u{301}"

let fun : Character = "ъ\u{301}\u{20dd}"

let funString = "what is this? -> \(fun)"

funString

countElements(funString)
(funString as NSString).length

if funString == "aa" {
    
} else {
    println("not equal")
}

funString.hasPrefix("what")
funString.hasSuffix("ъ\u{20dd}\u{301}")

*/
