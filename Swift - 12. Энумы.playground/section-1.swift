

//1. Создать энум с шахматными фигруами (король, ферзь и т.д.). Каждая фигура должна иметь цвет белый либо черный (надеюсь намек понят), а так же букву и цифру для позиции. Создайте пару фигур с расположением на доске, так, чтобы черному королю был мат :) Поместите эти фигуры в массив фигур


enum Chess {

    case king  (color: Color, position: Position)        //король
    case queen  (color: Color, position: Position)       // ферзь
    case pawn   (color: Color, position: Position)       // пешка
    case knight    (color: Color, position: Position)      //конь
    case elephant  (color: Color, position: Position)     //слон
    case rook (color: Color, position: Position)       //ладья
    
    enum Color: String {
        case Black = "Black"
        case White = "White"
    
    }
    
    typealias Position = (x: String, y: Int)
}

var f1 = Chess.king(color: .Black, position: (x: "d", y: 5))
var f2 = Chess.king(color: .White, position: (x: "d", y: 7))
var f3 = Chess.queen(color: .Black, position: (x: "f", y: 2))
var f4 = Chess.queen(color: .White, position: (x: "e", y: 4))

//уменьшил код, вариант ->  var f5 = Chess.knight(.White, ("b", 7))  - swift показал как ошибку

var f5 = Chess.knight(color: .White, position: ("b", 7))
var f6 = Chess.pawn (color: .White, position: ("c", 3))
var f7 = Chess.pawn (color: .White, position: ("d", 3))
var f8 = Chess.elephant(color: .White, position: ("a", 8))

var figures = [f1, f2, f3, f4, f5, f6, f7, f8]


typealias figureInfo = (name : String, color: Chess.Color, position: Chess.Position)

enum figureName : String {

    case king = "King"
    case queen = "Queen"
    case pawn = "Pawn"
    case knight = "Knight"
    case elephant = "Elephant"
    case rook = "Rook"
}

func FigureInfo (figure: Chess) -> figureInfo {

    typealias Name = figureName
    
    switch figure{
    
        case let .king(col, pos) : return (Name.king.rawValue, col, pos)
        case let .queen(col, pos) : return (Name.queen.rawValue, col, pos)
        case let .pawn(col, pos) : return (Name.pawn.rawValue, col, pos)
        case let .knight(col, pos) : return (Name.knight.rawValue, col, pos)
        case let .elephant(col, pos) : return (Name.elephant.rawValue, col, pos)
        case let .rook(col, pos) : return (Name.rook.rawValue, col, pos)
        
    }
}



//2. Сделайте так, чтобы энумовские значения имели rawValue типа String. Каждому типу фигуры установите соответствующее английское название. Создайте функцию, которая выводит в консоль (текстово, без юникода) название фигуры, цвет и расположение. Используя эту функцию распечатайте все фигуры в массиве.






//3. Используя красивые юникодовые представления шахматных фигур, выведите в консоли вашу доску. Если клетка не содержит фигуры, то используйте белую или черную клетку. Это должна быть отдельная функция, которая распечатывает доску с фигурами (принимает массив фигур и ничего не возвращает)
//
//4. Создайте функцию, которая будет принимать шахматную фигуру и тюпл новой позиции. Эта функция должна передвигать фигуру на новую позицию, причем перемещение должно быть легальным: нельзя передвинуть фигуру за пределы поля и нельзя двигать фигуры так, как нельзя их двигать в реальных шахматах (для мегамонстров программирования). Вызовите эту функцию для нескольких фигур и распечатайте поле снова.
//
//5. Следите чтобы ваш код был красивым!





/*
enum Direction : String {
    case Left = "Left!"
    case Right = "Right!"
}

enum Action {
    case Walk(meters: Int)
    case Run(meters: Int, speed: Double)
    case Stop
    case Turn(direction: Direction)
}

var action = Action.Run(meters: 20, speed: 15.0)

//action = .Stop

///action = .Walk(meters: 500)

//action = .Turn(direction: "Left") <-- wrong!

//action = .Turn(direction: .Left)

var direction = Direction(rawValue: "Right!")!

action = .Turn(direction: direction)

switch action {
    
    case .Stop: println("Stop")
    
    //case .Walk(let meters): println("walk \(meters) meters")
    
    case .Walk(let meters) where meters < 100:
        println("short walk")
    
    case .Walk(let meters):
        println("long walk")
    
    case .Run(let m, let s):
        println("run \(m) meters with speed \(s)")
    
    case .Turn(let dir) where dir == .Left:
        println("Turn left")
    
    case .Turn(let dir) where dir == .Right:
        println("Turn right")
    
    
    default: break
}

println(Direction.Left.rawValue)


*/

