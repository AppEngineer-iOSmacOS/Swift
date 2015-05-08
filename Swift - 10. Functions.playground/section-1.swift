//DRY

/* 

1. Создайте пару функций с короткими именами, которые возвращают строку с классным символом или символами. Например heart() возвращает сердце и т.п. Вызовите все эти функции внутри принта для вывода строки этих символов путем конкатенации.


*/


func smile() -> String{
    return "\u{1F607}"
}

func smile2() -> String{
    return "\u{1F618}"
}

func heart() -> String{
    return "\u{2764}"
}

func flower() -> String{
    return "\u{273F}"
}

func danjer() -> String{
    return "\u{2622}"
}

println("\(smile()) + \(smile2()) -> \(heart()) \n \(flower()) - \(danjer())")



/*

2. Опять шахматные клетки. 
Реализовать функцию, которая принимает букву и символ 
и возвращает строку “белая” или “черная”. 
Строку потом распечатайте в консоль


*/



func chess (abc: String, type: Int) -> String {

    let desk = ["A":1, "B":2, "C":3, "D":4, "E":5, "F":6, "G":7, "H":8]
    
    if desk[abc]! % 2 == type  % 2 {
    
        return "\u{2B1B}"
    } else {
        return "\u{2B1C}"
    }
    
    
}

println(chess("A", 1) + chess("A", 2) + chess("A", 3) + chess("A", 4))
println(chess("B", 4) + chess("C", 3) + chess("D", 3) + chess("D", 1))



/*
3. Создайте функцию, которая принимает массив, а возвращает массив в обратном порядке. 
Можете создать еще одну, которая принимает последовательность и возвращает массив в обратном порядке. 
Чтобы не дублировать код, сделайте так, чтобы функция с последовательностью вызывала первую.
*/



func arrayReturn (array : [Int]) -> [Int] {
    
   var  reverseArray = [Int]()
    for  i in array {
        reverseArray.insert(i, atIndex: 0)
    }

return reverseArray
}


//----------------



func invertData (numbers: Int...) ->[Int]{

    return arrayReturn(numbers)
}


println(invertData(1,2,3,4,5,6,7,8,9))

println(arrayReturn ([10,11,12,13,14,15]))



/*


4. Разберитесь с inout самостоятельно и выполните задание номер 3 так, чтобы функция не возвращала перевернутый массив, но меняла элементы в существующем. Что будет если убрать inout?

*/





/*

5. Создайте функцию, которая принимает строку, убирает из нее все знаки препинания, делает все гласные большими буквами, согласные маленькими, а цифры меняет на соответствующие слова (9 -> nine и тд)
*/



func crazy (inputString text : String) -> String {
    
    var result = String()
    let numberDict = [0:"ноль", 1:"один", 2:"два", 3:"три", 4:"четыре", 5:"пять", 6:"шесть", 7:"семь", 8:"восемь", 9:"девять"]
    
    for  char in text {
       var char = String(char)
        switch char {
        
        case "!", "?", ",", ".", ":", ";" : result += ""
        case "у", "е", "ы", "а", "о", "э", "я", "и", "ю" : result += String(char).uppercaseString
        case "Ц", "К", "Н", "Г", "Ш", "Щ", "Х", "Ф", "В", "П", "Р", "Л", "Д", "Ж", "Ч", "С", "М", "Т", "Б" : result += String(char).lowercaseString
        case _ where char.toInt() != nil : result += numberDict[char.toInt()!]!

        default : result += String(char)
        
        }
        
    }
 return result
}


let texString = "1 . Создайте функцию, которая принимает строку, убирает из нее все знаки препинания, делает все гласные большими буквами, согласные маленькими, а цифры меняет на соответствующие слова, например цифру 256 или нет?"

println("\n \(crazy(inputString: texString))")

//end

/*

func calculateMoney(inWallet wallet: [Int], withType type: Int? = nil) -> (total: Int, count: Int) {
    
    var sum = 0
    var count = 0
    
    for value in wallet {

        if (type == nil) ||
            (value == type!) {
            sum += value
            count++
        }
        
    }
    
    return (sum, count)
}

func calculateMoney(inSequence range: Int...) -> Int {
    
    var sum = 0
    for value in range {
        sum += value
    }
    
    return sum
}



let wallet = [100, 5, 1, 5, 5, 20, 50, 100, 1, 1]

let (money, count) = calculateMoney(inWallet: wallet)

money
count

/*

......

*/

calculateMoney(inWallet: wallet, withType: 100).count


calculateMoney(inSequence: 5,5,10,2,3,4,3,23,34,1,1)


func sayHi() -> () {
    println("hi")
}

//sayHi()
//sayHi()
//sayHi()
//sayHi()

let hi /*: () -> ()*/ = sayHi


func sayPhrase(phrase: String) -> Int? {
    println(phrase)
    return 0
}

sayPhrase("aaa")

let phrase /*: (String) -> (Int?)*/ = sayPhrase

phrase("bbb")


func doSomething(whatToDo:()->()) {
    whatToDo()
}

func whatToDo() -> () -> () {
    
    func printSomething() {
        println("hello world!!!")
    }
    
    return printSomething
}

doSomething(sayHi)


let iShouldDoThis = whatToDo()
iShouldDoThis()

*/
