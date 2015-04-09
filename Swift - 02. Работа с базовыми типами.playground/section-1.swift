//1. Выведите в консоль минимальные и максимальные значения базовых типов, не ленитесь :)
//
//2. Создайте 3 константы с типами Int, Float и Double
//
//Создайте другие 3 константы, тех же типов: Int, Float и Double,
//
//при чем каждая из них это сумма первых трех, но со своим типом
//
//3. Сравните Int результат суммы с Double и выведите отчет в консоль

let int8min = Int8.min
let int8max = Int8.max
let int16min = Int16.min
let int16max = Int16.max
let int32min = Int32.min
let int32max = Int32.max
let int64min = Int64.min
let int64max = Int64.max

println("Максимальное значение всех интов:\n\(int8max)\n\(int16max)\n\(int32max)\n\(int64max)\n")
println("Минимальное значение всех интов:\n\(int8min)\n\(int16max)\n\(int32min)\n\(int64min)")

let a = 5
let b:Float = 3.2
let c = 7.452

let x = a + Int(b) + Int(c)
let y = Float(a) + b + Float(c)
let z = Double(a) + Double(b) + c

println("\n a = \(a)\n b = \(b)\n c = \(c)")
println("\na+b+c = \(x)                _Int\na+b+c = \(y)            _Float\na+b+c = \(z)  _Double\n")

let intResultFloat = y - Float(x)
let intResultDouble = z - Double(x)

println("Float - Int = \(intResultFloat)\nDouble - Int = \(intResultDouble)\n")


if Float(x) > y {
    println("Результат: Int > Float")
}
    else {
    println("Результат: Int < Float")
    }
if Double(x) > z {
    println("Результат: Int > Double")
} else {
    println("Результат: Int < Double")
}

if Double(intResultFloat) > intResultDouble {
    println("Результат: Double > Float")
}
else {
    println("Результат: Double < Float")
}


//let bigNumber = 1_863_215_371_232

//let oct = 0o12
//
//let number  = 255
//let hex     = 0xff
//let binary  = 0b11111111
//
//Int8.min
//Int8.max
//UInt8.min
//UInt8.max
//
//13.3123e2
//13.3123e-2
//
//0x5p2
//0x5p-2
//
///*
//let a = 5
//let b = 5.0
//
//let c = a + Int(b)
//*/
//
///*
//let a = 5
//let b = 5.2
//
//let c = Double(a) + b
//*/
//
////let c = 5 + 5.2
//
//typealias AlexNumber = Int
//
//let a : AlexNumber = 5
//let b = 5.2
//
//let c = a + AlexNumber(b)
//
//let d = false
//
//if d {
//    println("Hi!")
//} else {
//    println("Bye!")
//}
//
//
//
