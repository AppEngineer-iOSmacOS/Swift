/*

1. создать массив "дни в месяцах"
12 элементов содержащих количество дней в соответствующем месяце

используя цикл for и этот массив

- выведите количество дней в каждом месяце (без имен месяцев)
- используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней
- сделайте тоже самое, но используя массив тюплов с параметрами (имя месяца, кол-во дней)
- сделайте тоже самое, только выводите дни в обратном порядке (порядок в массиве не меняется)

- для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года


*/

let yearArray = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

println("In year - \(yearArray.count) months")


for index in yearArray {
 println(index)
}


let monthArray = ["jun", "fev", "mar", "apr", "may", "jun", "jly", "aug", "sep", "okt", "nom", "dec"]




for index in 0..<monthArray.count {
    println("\(monthArray[index]) = \(yearArray[index])")
}




let monthYearArray = [("jun", 31), ("fev", 28), ("mar", 31), ("apr", 30), ("may", 31), ("jun", 30), ("jly", 31), ("aug", 31), ("sep", 30), ("okt", 31), ("nom", 30), ("dec", 31)]




for index in monthYearArray {
    println("\(index.0) = \(index.1)")
    
}

for var i = yearArray.count - 1; i >= 0; i-- {

    println(yearArray[i])
}


//- для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года



//fev 28



var myB = (mon : "mar", day : 15)
var sumDay = 0


for var i=0; i<yearArray.count; i++ {

    if myB.mon == monthArray[i] {
        
        sumDay += myB.day
            println(sumDay)
    }
    sumDay += yearArray[i]
}



//2. Сделайте первое задание к уроку номер 4 используя массивы:
//
//(создайте массив опшинал интов и посчитайте сумму)
//
//- в одном случае используйте optional binding
//- в другом forced unwrapping
//- а в третьем оператор ??
//
//3. создайте строку алфавит и пустой массив строк
//
//в цикле пройдитесь по всем символам строки попорядку, преобразовывайте каждый в строку и добавляйте в массив, причем так, чтобы на выходе получился массив с алфавитом задом-наперед





/*

let constArray = ["a", "b", "c", "d"]

constArray.count

var array = [String]()

if array.isEmpty {
    println("array is empty")
}

array += constArray

array += ["e"]

array.append("f")

var array2 = array

array
array2

array2[0] = "1"

array
array2

//array[1..<4] = ["0"]

array

array.insert("-", atIndex: 3)

array

array.removeAtIndex(3)

array

//let test = [Int](count: 10, repeatedValue: 100)
let money = [100, 1, 5, 20, 1, 50, 1, 1, 20, 1]

var sum = 0
for var i = 0; i < 9; i++ {
    //println("i = \(i)")
    sum += money[i]
}
sum

sum = 0

for var i = 0; i < money.count; i++ {
    //println("i = \(i)")
    sum += money[i]
}
sum

sum = 0

for i in 0..<money.count {
    println("index = \(i) value = \(money[i])")
    sum += money[i]
}
sum

sum = 0

for value in money {
    sum += value
}
sum

sum = 0

for (index, value) in enumerate(money) {
    println("index = \(index) value = \(value)")
    sum += value
}
sum



*/









