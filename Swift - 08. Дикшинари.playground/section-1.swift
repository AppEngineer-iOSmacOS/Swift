//let dict : [String:String] = ["машина" : "car", "мужик" : "man"]
//let dict2 : [Int:String] = [0 : "car", 1 : "man"]
//let dict3 : Dictionary<String, Double> = ["a" : 2.0]
//dict2[1]

/*

1. Создайте дикшинари как журнал студентов, где имя и фамилия студента это ключ, а оценка за контрольную значение. Некоторым студентам повысьте оценки - они пересдали. Потом добавьте парочку студентов, так как их только что перевели к вам в группу. А потом несколько удалите, так как они от вас ушли :(

После всех этих перетрубаций посчитайте общий бал группы и средний бал

*/

var jornal = ["Stident Nomber1" : 5, "Student Nomber2" : 3, "Sident Nomber3" : 4, "Student Nomber4" : 2]

jornal["Student Nomber4"] = 5
jornal["Student Nomber2"] = 4

let nomberGroupStart = jornal.count

jornal["New Student1"] = 5
jornal["New Student2"] = 1


let nomberGroupAdd = jornal.count


jornal["Student Nomber2"] = nil
jornal["Student Nomber1"] = nil
jornal["Student Nomber3"] = nil


let nomberGroupDel = jornal.count


for key in jornal.keys{
    println("Name = \(key), Result = \(jornal[key]!)")
}

var i = 0
for (_, value) in jornal {

     i+=value;
}

var sredBall = i/jornal.count

println("В группе было \(nomberGroupStart) человека\n потом добавили еще и их стало  \(nomberGroupAdd)")
println("Кто-то ушел из группы и осталось \(nomberGroupDel) студентов")
println("Общий балл группы =\(i). А средний балл группы = \(sredBall)")


/*
2. Создать дикшинари дни в месяцах, где месяц это ключ, а количество дней - значение.
В цикле выведите ключ-значение попарно, причем один раз выведите через тюплы, а другой раз пройдитесь по массиву ключей и для каждого из них доставайте значения.
*/


let year = ["January" : 31, "February" : 28, "March" : 31, "April" : 30, "May" : 31, "June" : 30, "July" : 31, "August" : 31, "September" : 30, "October" : 31, "November" : 30, "December" : 31]

for (key, value) in year {

println("in \(key) - \(value) days")

}

for key in year.keys {

    println("in \(key) - \(year[key]!) days")
}

/*

3. Создать дикшинари , в которой ключ это адрес шахматной клетки (пример: a5, b3, g8), а значение это Bool. Если у клетки белый цвет, то значение true, а если черный - false. Выведите дикшинари в печать и убедитесь что все правильно.
*/

var chess = [String:Bool]()

let abc = ["a", "b", "c", "d", "e", "g", "h"]

for abcdegh in abc {
    println("\(abcdegh)")
}


/*
var dict = ["машина" : "car", "мужик" : "man"]

dict["мужик"]

dict.count
dict.isEmpty

var dict3 = [String,String]()

dict3.count
dict3.isEmpty

dict["комп"] = "computer"

dict

dict.keys.array
dict.values.array

//dict["комп"] = "mac"

dict.updateValue("mac", forKey: "комп")

//let comp : String? = dict["комп"]

if let comp = dict["комп2"] {
    println("\(comp)")
} else {
    println("no value for key комп2")
}

//dict["мужик"] = nil
//dict

/*
dict.removeValueForKey("мужик")

dict = [:]

dict.isEmpty

dict["hello"] = "world"

dict
*/


for key in dict.keys {
    println("key = \(key), value = \(dict[key]!)")
}

for (key, value) in dict {
    println("key = \(key), value = \(value)")
}

*/

