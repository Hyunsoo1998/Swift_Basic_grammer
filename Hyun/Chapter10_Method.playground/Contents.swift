//mutating 키워드 사용
//자신의 프로퍼티 값을 수정할때 클래스의 인스턴스 메서드는 크게 신경 쓸 필요가 없지만,
//구조체나 열거형 등은 값 타입이므로 메서드 앞에 mutating키워드를 붙여서 해당 메서드가 인스턴스 내부의 값을
//변경한다는 것을 명시해야 한다 .


//struct LevelStruct {
//    var level : Int = 0 {
//    didSet {
//        print("Level \(level)")
//    }
//}
//    mutating func levelUp() {
//        print("Level Up")
//        level += 1
//    }
//    mutating func levelDown() {
//        print("Level Down")
//        level -= 1
//        if (level < 0) {
//            reset()
//        }
//    }
//    mutating func reset() {
//        print("reset")
//        level = 0
//    }
//    mutating func Jumplevel(to : Int) {
//        print("Jump to \(to)")
//        level = to
//    }
//}
//
//var levelStructInstance : LevelStruct = LevelStruct()
//
//levelStructInstance.levelUp()
//levelStructInstance.levelDown()
//
//levelStructInstance.levelDown()
//
//levelStructInstance.Jumplevel(to: 5)

//self프로퍼티
//모든 인스터느는 암시적으로 생성된 self프로퍼티를 갖는다.
//자바의 this와 비슷하게 인스턴스 자기 자신을 가리키는 프로퍼티 이다.

//인스턴스 프로퍼티인 level을 지칭하고 싶다면 self프로퍼티를 사용한다 .

//class LevelClass {
//    var level : Int = 0
//
//    func jumpLevel(to level : Int) {
//        print("Jump to \(level)")
//        self.level = level
//    }
//}

//self프로퍼티의 다른 용도는 값 타입 인스턴스 자체의 값을 치환할 수 있다.
//클래스의 인스턴스는 참조 타입이라서 self프로퍼티에 다른 참조를 할당할 수 없는데, 구조체나 열거형 등은
//self 프로퍼티를 사용하여 자신 자체를 치환할 수도 있다.

class LevelClass {
    var level : Int = 0
    
//    func reset() {
//        //오류 ! self프로퍼티 참조 변경 불가 .
//        //self = LevelClass()
//    }
    
}
struct LevelStruct {
    var level: Int = 0
    
    mutating func levelUp() {
        print("level up")
        level +=  1
    }
    mutating func reset() {
        print("Reset!")
        self = LevelStruct()
    }
}

var levelStructInstance: LevelStruct = LevelStruct()

levelStructInstance.levelUp()
print(levelStructInstance.level)

levelStructInstance.reset()
print(levelStructInstance.level)

enum OnOffSwitch {
    case on , off
    mutating func nextState() {
        self = self == .on ? . off : .on
    }
    
}
var toggle : OnOffSwitch = OnOffSwitch.off
toggle.nextState()
print(toggle)

/* 인스턴스를 함수처럼 호출하도록 하는 메서드
 특정 타입의 인스턴스를 문법적으로 함수를 사용하는 것처럼 보이게 할 수 있다.
 인스턴스를 함수처럼 호출할 수 있도록 하려면 callAsFunction이라는 이름의 메서드를 구현하면 된다 .
 
 매개변수와 반환 타입만 다르다면 개수에 제한 없이 원하는 만큼 만들 수 있다.
 mutaing키워드도 사용할 수 있고, throws와 rethrows도 함께 사용할 수 있다.
 */

struct Puppy {
    
    var name : String = "강아지"
    
    func callAsFunction() {
        print("ㅁㅁ")
    }
    func callAsFunction(destination : String){
            print("\(destination)(으)로 달려갑니다.")
    }
    func callAsFunction(something :String, times : Int) {
        print("\(something) 을 \(times) 반복합니다.")
    }
    func callAsFunction(color : String) -> String {
        return "\(color) 메롱"
    }
    mutating func callAsFunction(name : String) {
        self.name = name
    }
}

var doggy : Puppy = Puppy()
doggy.callAsFunction() //ㅁㅁ
doggy() //ㅁㅁ -> 매개변수가 없으니 매개변수가 없는(callAsFunction 메서드로 간다.)
doggy.callAsFunction(destination: "집")
doggy.callAsFunction(something: "잔재주", times: 23)
doggy.callAsFunction(color: "파란색")
doggy(name: "현댕이")
print(doggy.name)

