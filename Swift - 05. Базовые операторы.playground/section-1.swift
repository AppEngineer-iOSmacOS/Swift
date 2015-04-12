/*
1. Посчитать количество секунд от начала года до вашего дня рождения. Игнорируйте високосный год и переходы на летнее и зимнее время. Но если хотите - не игнорируйте :)

2. Посчитайте в каком квартале вы родились

3. Создайте пять переменных типа Инт и добавьте их в выражения со сложением, вычитанием, умножением и делением. В этих выражениях каждая из переменных должна иметь при себе унарный постфиксный или префиксный оператор. Переменные могут повторяться.

Убедитесь что ваши вычисления в голове или на бумаге совпадают с ответом. Обратите внимание на приоритет операций

4. Шахматная доска 8х8. Каждое значение в диапазоне 1…8. При заданных двух значениях по вертикали и горизонтали определите цвет поля. Если хотите усложнить задачу, то вместо цифр на горизонтальной оси используйте буквы a,b,c,d,e,f,g,h

*/

let m31 = 31
let m30 = 30

let sutki = 24 * 60 * 60

let sec = (sutki * 3) + ((m31 * 3) + (m30 * 2))

println("с начала года - до моего дня рождения проходит \(sec) секунд")

let mesRojd = 6
let kvart = mesRojd / 3

println("Я родился в \(kvart) квартале")



var chess = (x : Int(), y : String())

chess.x = 2
chess.y = "S"

// поле 6х6 с проверкой точки вне поля

if  ((chess.x % 2 == 1) && (chess.x >= 1 && chess.x <= 6)) && ((chess.y == "A") || (chess.y == "C") || (chess.y == "E")) || ((chess.x % 2 != 1) && (chess.x >= 1 && chess.x <= 8)) && ((chess.y == "B") || (chess.y == "D") || (chess.y == "F")){
    println("\(chess.y)\(chess.x) - is black")
}
else if (chess.x >= 1 && chess.x <= 6) && ((chess.y == "A") || (chess.y == "B") || (chess.y == "C") || (chess.y == "D") || (chess.y == "E") || (chess.y == "F")) {
    println("\(chess.y)\(chess.x) - is white")
    
} else {
println("Точка вне поля")
}




/*

let total = ((5 + 6) - (8 * 3)) - (5 / 10) //+ ++5 + --7 - 5-- + 7++

let div = 10 / 3
let rest = 13 % 3

4923764283415 % 101


var small : UInt8 = 0xff

//small = 0
//small = small - 1

// &+ &* &/ &- &%
small = small &+ 5

let str = "Hi, " + "there!"

let a = 6
let b = 3

// >, <, >=, <=, ==, !=, ===, !==
if (a >= b) {
    println("yes")
} else {
    println("no")
}

var c : Int

/*
if a < b {
    c = a
} else {
    c = b
}
*/

c = (a < b) ? a : b

let text = "123"

let n = text.toInt()

/*
if n != nil {
    c = n!
} else {
    c = 0
}
*/
/*
if let opt = n {
    c = opt
} else {
    c = 0
}
*/

c = n ?? 0


var sum = 5
sum = sum + 1
sum += 1

sum++
sum
++sum

--sum
sum--

var good = true

good = !good
// && = *, || = +
if good {
    println("good")
} else {
    println("bad")
}

/*
true && true = true
true && false = false
false && true = false
false && false = false

true || true = true
true || false = true
false || true = true
false || false = false
*/

let i = 5
let j = 6
let k = 7
let m = 8

if (i < 3) && (j > k) && ((m != k) || m > i) {
    
}

0...5
0..<5

for i in 0..<5 {
    println("\(i)")
}




*/


